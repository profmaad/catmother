module CatMother
  module Opcode
    class Lsub
      MNEMONIC = "lsub"
      OPCODE = 0x65
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Subtract long"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
