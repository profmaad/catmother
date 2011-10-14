module CatMother
  module Opcode
    class Pop
      MNEMONIC = "pop"
      OPCODE = 0x57
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Pop the top operand stack value"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
