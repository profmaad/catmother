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
	@atype = io.readbyte
      end

      def length
        return 1
      end
    end
  end
end
