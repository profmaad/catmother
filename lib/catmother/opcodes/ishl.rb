module CatMother
  module Opcode
    class Ishl
      MNEMONIC = "ishl"
      OPCODE = 0x78
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Shift left int"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
