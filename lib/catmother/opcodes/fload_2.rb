module CatMother
  module Opcode
    class Fload_2
      MNEMONIC = "fload_2"
      OPCODE = 0x24
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load float form local variable"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
