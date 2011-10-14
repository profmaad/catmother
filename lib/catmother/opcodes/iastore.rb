module CatMother
  module Opcode
    class Iastore
      MNEMONIC = "iastore"
      OPCODE = 0x4f
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into int array"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
