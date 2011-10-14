module CatMother
  module Opcode
    class Lconst_0
      MNEMONIC = "lconst_0"
      OPCODE = 0x09
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push long constant (0)"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
