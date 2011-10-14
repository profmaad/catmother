module CatMother
  module Opcode
    class Dneg
      MNEMONIC = "dneg"
      OPCODE = 0x77
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Negate double"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
