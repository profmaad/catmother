module CatMother
  module Opcode
    class Iload_2
      MNEMONIC = "iload_2"
      OPCODE = 0x1c
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load int from local variable"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
