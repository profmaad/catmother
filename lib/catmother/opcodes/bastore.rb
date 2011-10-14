module CatMother
  module Opcode
    class Bastore
      MNEMONIC = "bastore"
      OPCODE = 0x54
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into byte or boolean array"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
