module CatMother
  module Opcode
    class Dup2_x2
      MNEMONIC = "dup2_x2"
      OPCODE = 0x5e
      OPERANDS = 0
      POPS = 4
      PUSHES = 6
      SHORT_DESCRIPTION = "Duplicate the top one or two operand stack values and insert two, three, or four values down"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
