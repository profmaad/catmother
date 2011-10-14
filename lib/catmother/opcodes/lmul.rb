module CatMother
  module Opcode
    class Lmul
      MNEMONIC = "lmul"
      OPCODE = 0x69
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Multiply long"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
