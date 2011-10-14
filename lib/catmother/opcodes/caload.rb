module CatMother
  module Opcode
    class Caload
      MNEMONIC = "caload"
      OPCODE = 0x34
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load char from array"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
