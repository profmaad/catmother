module CatMother
  module Opcode
    class Faload
      MNEMONIC = "faload"
      OPCODE = 0x30
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load float from array"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
