module CatMother
  module Opcode
    class Swap
      MNEMONIC = "swap"
      OPCODE = 0x5f
      OPERANDS = 0
      POPS = 2
      PUSHES = 2
      SHORT_DESCRIPTION = "Swap the top two operand stack values"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
