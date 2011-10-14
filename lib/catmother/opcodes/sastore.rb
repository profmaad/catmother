module CatMother
  module Opcode
    class Sastore
      MNEMONIC = "sastore"
      OPCODE = 0x56
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into short array"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
