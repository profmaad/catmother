module CatMother
  module Opcode
    class Iconst_4
      MNEMONIC = "iconst_4"
      OPCODE = 0x07
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
