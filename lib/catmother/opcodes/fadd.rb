module CatMother
  module Opcode
    class Fadd
      MNEMONIC = "fadd"
      OPCODE = 0x62
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Add float"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
