require 'catmother/binary_helpers'
require 'catmother/invalid_classfile_error'
require 'catmother/attribute_parser'
require 'catmother/java_method'
require 'catmother/java_field'
require 'catmother/java_constant'

module CatMother
  class JavaClass
    JAVA_CLASS_MAGIC = "\xCA\xFE\xBA\xBE"
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
        constant = JavaConstant.new(io)
        @constants[index] = constant
        index += constant.slots_occupied
      end
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
        @interfaces.push(BinaryHelpers::read_u2(io))
      end
    end

    def parse_fields(io)
      fields_count = BinaryHelpers::read_u2(io)

      fields_count.times do
        @fields.push(JavaField.new(io, @constants))
      end
    end

    def parse_methods(io)
      methods_count = BinaryHelpers::read_u2(io)
      
      methods_count.times do
        @methods.push(JavaMethod.new(io, @constants))
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
      return @constants[@constants[@this_class].value].value
    end
    def version
      return "#{@major_version}.#{@minor_version}"
    end
  end
end
