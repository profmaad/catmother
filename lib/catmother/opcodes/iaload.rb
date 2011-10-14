module CatMother
  module Opcode
    class Iaload
      MNEMONIC = "iaload"
      OPCODE = 0x2e
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load int from array"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
