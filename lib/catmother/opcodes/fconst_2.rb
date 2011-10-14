module CatMother
  module Opcode
    class Fconst_2
      MNEMONIC = "fconst_2"
      OPCODE = 0x0d
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push float"
      DESCRIPTION = "Push the float constant 2.0 onto the operand stack."

      def initialize(io)
      end
    end
  end
end
