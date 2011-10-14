module CatMother
  module Opcode
    class Lload_1
      MNEMONIC = "lload_1"
      OPCODE = 0x1f
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load long from local variable"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
