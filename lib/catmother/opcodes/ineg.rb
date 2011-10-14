module CatMother
  module Opcode
    class Ineg
      MNEMONIC = "ineg"
      OPCODE = 0x74
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Negate int"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
