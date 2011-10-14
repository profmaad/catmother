module CatMother
  module Opcode
    class Dup2
      MNEMONIC = "dup2"
      OPCODE = 0x5c
      OPERANDS = 0
      POPS = 2
      PUSHES = 4
      SHORT_DESCRIPTION = "Duplicate the top one or two operand stack values"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
