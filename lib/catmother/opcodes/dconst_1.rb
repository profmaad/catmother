module CatMother
  module Opcode
    class Dconst_1
      MNEMONIC = "dconst_1"
      OPCODE = 0x0f
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push double"
      DESCRIPTION = "Push the double constant 1.0 onto the operand stack."

      def initialize(io)
      end
    end
  end
end
