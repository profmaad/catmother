module CatMother
  module Opcode
    class Fconst_0
      MNEMONIC = "fconst_0"
      OPCODE = 0x0b
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push float"
      DESCRIPTION = "Push the float constant 0.0 onto the operand stack."

      def initialize(io)
      end
    end
  end
end
