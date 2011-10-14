module CatMother
  module Opcode
    class Drem
      MNEMONIC = "drem"
      OPCODE = 0x73
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Remainder double"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
