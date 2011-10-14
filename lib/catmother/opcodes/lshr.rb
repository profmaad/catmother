module CatMother
  module Opcode
    class Lshr
      MNEMONIC = "lshr"
      OPCODE = 0x7b
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Arithmetic shift right long"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
