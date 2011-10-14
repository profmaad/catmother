module CatMother
  module Opcode
    class Fneg
      MNEMONIC = "fneg"
      OPCODE = 0x76
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Negate Float"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
