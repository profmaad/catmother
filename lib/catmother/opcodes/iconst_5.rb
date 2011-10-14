module CatMother
  module Opcode
    class Iconst_5
      MNEMONIC = "iconst_5"
      OPCODE = 0x08
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
