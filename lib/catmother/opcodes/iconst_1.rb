module CatMother
  module Opcode
    class Iconst_1
      MNEMONIC = "iconst_1"
      OPCODE = 0x04
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push int constant"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
