module CatMother
  module Opcode
    class Pop2
      MNEMONIC = "pop2"
      OPCODE = 0x58
      OPERANDS = 0
      POPS = 2
      PUSHES = 0
      SHORT_DESCRIPTION = "Pop the top one or two operand stack values"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
