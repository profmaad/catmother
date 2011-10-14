module CatMother
  module Opcode
    class L2f
      MNEMONIC = "l2f"
      OPCODE = 0x89
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert long to float"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
