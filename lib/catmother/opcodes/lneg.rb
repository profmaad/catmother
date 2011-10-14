module CatMother
  module Opcode
    class Lneg
      MNEMONIC = "lneg"
      OPCODE = 0x75
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Negate long"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
