module CatMother
  module Opcode
    class L2i
      MNEMONIC = "l2i"
      OPCODE = 0x88
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert long to int"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
