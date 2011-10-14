module CatMother
  module Opcode
    class Aastore
      MNEMONIC = "aastore"
      OPCODE = 0x53
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into reference array"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
