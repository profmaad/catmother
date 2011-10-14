module CatMother
  module Opcode
    class Lshl
      MNEMONIC = "lshl"
      OPCODE = 0x79
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Shift left long"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
