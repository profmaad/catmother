module CatMother
  module Opcode
    class Lconst_1
      MNEMONIC = "lconst_1"
      OPCODE = 0x0a
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push long constant (1)"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
