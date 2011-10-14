module CatMother
  module Opcode
    class Fconst_1
      MNEMONIC = "fconst_1"
      OPCODE = 0x0c
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push float"
      DESCRIPTION = "Push the float constant 1.0 onto the operand stack."

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
