module CatMother
  module Opcode
    class L2d
      MNEMONIC = "l2d"
      OPCODE = 0x8a
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert long to double"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
