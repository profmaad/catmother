module CatMother
  module Opcode
    class Nop
      MNEMONIC = "nop"
      OPCODE = 0x00
      OPERANDS = 0
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Do nothing"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
