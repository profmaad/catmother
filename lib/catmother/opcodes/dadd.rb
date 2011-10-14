module CatMother
  module Opcode
    class Dadd
      MNEMONIC = "dadd"
      OPCODE = 0x63
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Add double"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
