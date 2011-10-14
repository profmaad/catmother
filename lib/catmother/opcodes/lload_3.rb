module CatMother
  module Opcode
    class Lload_3
      MNEMONIC = "lload_3"
      OPCODE = 0x21
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
