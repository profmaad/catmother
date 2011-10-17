module CatMother
  class JavaConstant
    class ConstantType
      UTF8_STRING      =  1
      INTEGER          =  3
      FLOAT            =  4
      LONG             =  5
      DOUBLE           =  6
      CLASS            =  7
      STRING           =  8
      FIELD            =  9
      METHOD           = 10
      INTERFACE_METHOD = 11
      NAME_AND_TYPE    = 12
    end

    attr_reader :tag, :value

    def initialize(io)
      @tag = BinaryHelpers::read_u1(io)
      
      @value = case tag
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

    def slots_occupied
      return 2 if (@tag == ConstantType::LONG) or (@tag == ConstantType::DOUBLE)
      return 1
    end
  end
end
