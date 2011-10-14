module CatMother
  module Opcode
    class Dup2_x1
      MNEMONIC = "dup2_x1"
      OPCODE = 0x5d
      OPERANDS = 0
      POPS = 3
      PUSHES = 5
      SHORT_DESCRIPTION = "Duplicate the top one or two operand stack values and insert two or three values down"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
