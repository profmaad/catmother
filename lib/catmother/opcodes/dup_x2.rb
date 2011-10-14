module CatMother
  module Opcode
    class Dup_x2
      MNEMONIC = "dup_x2"
      OPCODE = 0x5b
      OPERANDS = 0
      POPS = 3
      PUSHES = 4
      SHORT_DESCRIPTION = "Duplicate the top operand stack value and insert two or three values down"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
