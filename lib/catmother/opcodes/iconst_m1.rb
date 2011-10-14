module CatMother
  module Opcode
    class Iconst_m1
      MNEMONIC = "iconst_m1"
      OPCODE = 0x02
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push int constant"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
