module CatMother
  module Opcode
    class Dup
      MNEMONIC = "dup"
      OPCODE = 0x59
      OPERANDS = 0
      POPS = 1
      PUSHES = 2
      SHORT_DESCRIPTION = "Duplicate the top operand stack value"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
