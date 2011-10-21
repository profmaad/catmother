module CatMother
  module Opcode
    class Newarray
      MNEMONIC = "newarray"
      OPCODE = 0xbc
      OPERANDS = 1
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Create new array"
      DESCRIPTION = ""

      class ArrayType
        BOOLEAN = 4
        CHAR = 5
        FLOAT = 6
        DOUBLE = 7
        BYTE = 8
        SHORT = 9
        INT = 10
        LONG = 11
      end

      attr_reader :atype

      def initialize(io, pc)
        parse_operands(io, pc)
      end

      def parse_operands(io, pc)
	@atype = io.readbyte
      end

      def operands_length
        return 1
      end

      def operands_to_s
        return case @atype
               when ArrayType::BOOLEAN
                 "boolean"
               when ArrayType::CHAR
                 "char"
               when ArrayType::FLOAT
                 "float"
               when ArrayType::DOUBLE
                 "double"
               when ArrayType::BYTE
                 "byte"
               when ArrayType::SHORT
                 "short"
               when ArrayType::INT
                 "int"
               when ArrayType::LONG
                 "long"
               end
      end
      def operands_to_h
        return {:atype => @atype}
      end
    end
  end
end
