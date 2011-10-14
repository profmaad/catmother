module CatMother
  module Opcode
    class Lastore
      MNEMONIC = "lastore"
      OPCODE = 0x50
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into long array"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
