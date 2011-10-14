module CatMother
  module Opcode
    class Dcmpg
      MNEMONIC = "dcmpg"
      OPCODE = 0x98
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Compare double"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
