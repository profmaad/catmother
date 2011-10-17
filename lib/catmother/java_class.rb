require 'catmother/binary_helpers'
require 'catmother/invalid_classfile_error'
require 'catmother/attribute_parser'
require 'catmother/java_method'

module CatMother
  class JavaClass
    JAVA_CLASS_MAGIC = "\xCA\xFE\xBA\xBE"
    class ConstantType
      UTF8_STRING = 1
      INTEGER = 3
      FLOAT = 4
      LONG = 5
      DOUBLE = 6
      CLASS = 7
      STRING = 8
      FIELD = 9
      METHOD = 10
      INTERFACE_METHOD = 11
      NAME_AND_TYPE = 12
    end
    class AccessFlag
      PUBLIC    = 0x0001
      FINAL     = 0x0010
      SUPER     = 0x0020
      INTERFACE = 0x0200
      ABSTRACT  = 0x0400
    end

    attr_reader :filename
    attr_reader :name, :constants, :major_version, :minor_version, :access_flags, :this_class, :super_class, :interfaces, :fields, :methods, :attributes

    def initialize(filename)
      @filename = filename
      
      @constants = []
      @access_flags = []
      @interfaces = []
      @fields = []
      @methods = []
      @attributes = []

      io = open_classfile(filename)
      parse_classfile(io)
      io.close
    end

    def open_classfile(filename)
      return File.open(filename, 'rb')
    end
    
    def parse_classfile(io)
      parse_magic(io)
      parse_version(io)
      
      parse_constant_pool(io)

      parse_access_flags(io)

      parse_class_ids(io)

      parse_interfaces(io)
      parse_fields(io)
      parse_methods(io)
      parse_attributes(io)
    end

    def parse_magic(io)
      magic_value = io.read(4)
      unless magic_value == JAVA_CLASS_MAGIC
        raise InvalidClassfileError, "invalid magic value"
      end
    end
    def parse_version(io)
      minor = BinaryHelpers::read_u2(io)
      major = BinaryHelpers::read_u2(io)
      @minor_version = minor
      @major_version = major
    end

    def parse_constant_pool(io)
      constant_pool_count = BinaryHelpers::read_u2(io)
      
      index = 1
      while index<constant_pool_count
        slots_parsed = parse_constant(io,index)
        index += slots_parsed
      end
    end
    def parse_constant(io, index)
      tag = BinaryHelpers::read_u1(io)

      value = case tag
              when ConstantType::UTF8_STRING
                parse_utf8_string_constant(io)
              when ConstantType::INTEGER
                parse_integer_constant(io)
              when ConstantType::FLOAT
                parse_float_constant(io)
              when ConstantType::LONG
                parse_long_constant(io)
              when ConstantType::DOUBLE
                parse_double_constant(io)
              when ConstantType::CLASS
                parse_class_constant(io)
              when ConstantType::STRING
                parse_string_constant(io)
              when ConstantType::FIELD
                parse_field_constant(io)
              when ConstantType::METHOD
                parse_method_constant(io)
              when ConstantType::INTERFACE_METHOD
                parse_interface_method_constant(io)
              when ConstantType::NAME_AND_TYPE
                parse_name_and_type_constant(io)
              end

      @constants[index] = {:tag => tag, :value => value}
      return 2 if (tag == ConstantType::LONG) or (tag == ConstantType::DOUBLE)
      return 1
    end
    def parse_utf8_string_constant(io)
      length = BinaryHelpers::read_u2(io)
      string = io.read(length).force_encoding('UTF-8')

      return string
    end
    def parse_integer_constant(io)
      return BinaryHelpers::read_u4(io)
    end
    def parse_float_constant(io)
      return BinaryHelpers::read_float(io)
    end
    def parse_long_constant(io)
      return (BinaryHelpers::read_u4(io) << 32) | BinaryHelpers::read_u4(io)
    end
    def parse_double_constant(io)
      return BinaryHelpers::read_double(io)
    end
    def parse_class_constant(io)
      return BinaryHelpers::read_u2(io)
    end
    def parse_string_constant(io)
      return BinaryHelpers::read_u2(io)
    end
    def parse_field_constant(io)
      return {:class => BinaryHelpers::read_u2(io), :name_and_type => BinaryHelpers::read_u2(io)}
    end
    def parse_method_constant(io)
      return {:class => BinaryHelpers::read_u2(io), :name_and_type => BinaryHelpers::read_u2(io)}
    end
    def parse_interface_method_constant(io)
      return {:class => BinaryHelpers::read_u2(io), :name_and_type => BinaryHelpers::read_u2(io)}
    end
    def parse_name_and_type_constant(io)
      return {:name => BinaryHelpers::read_u2(io), :descriptor => BinaryHelpers::read_u2(io)}
    end

    def parse_access_flags(io)
      @access_flags = BinaryHelpers::read_u2(io)
    end

    def parse_class_ids(io)
      @this_class = BinaryHelpers::read_u2(io)
      @super_class = BinaryHelpers::read_u2(io)
    end

    def parse_interfaces(io)
      interfaces_count = BinaryHelpers::read_u2(io)

      interfaces_count.times do
        parse_interface(io)
      end
    end
    def parse_interface(io)
      @interfaces.push(BinaryHelpers::read_u2(io))
    end

    def parse_fields(io)
      fields_count = BinaryHelpers::read_u2(io)

      fields_count.times do
        parse_field(io)
      end
    end
    def parse_field(io)
      access_flags = BinaryHelpers::read_u2(io)
      name = BinaryHelpers::read_u2(io)
      descriptor = BinaryHelpers::read_u2(io)

      attributes = []
      attributes_count = BinaryHelpers::read_u2(io)
      parser = AttributeParser.new(@constants)
      attributes_count.times do
        attributes.push(parser.parse(io))
      end

      @fields.push({:access_flags => access_flags, :name => name, :descriptor => descriptor, :attributes => attributes})
    end

    def parse_methods(io)
      methods_count = BinaryHelpers::read_u2(io)
      
      methods_count.times do
        @methods.push(JavaMethod.new(io,@constants))
      end
    end

    def parse_attributes(io)
      attributes_count = BinaryHelpers::read_u2(io)
      
      parser = AttributeParser.new(@constants)
      attributes_count.times do
        @attributes.push(parser.parse(io))
      end
    end

    def has_access_flag?(flag)
      return ((@access_flags & flag) > 0)
    end
    def is_public?
      return has_access_flag?(AccessFlag::PUBLIC)
    end
    def is_final?
      return has_access_flag?(AccessFlag::FINAL)
    end
    def is_super?
      return has_access_flag?(AccessFlag::SUPER)
    end
    def is_interface?
      return has_access_flag?(AccessFlag::INTERFACE)
    end
    def is_abstract?
      return has_access_flag?(AccessFlag::ABSTRACT)
    end

    def name
      return @constants[@constants[@this_class][:value]][:value]
    end
    def version
      return "#{@major_version}.#{@minor_version}"
    end
  end
end
