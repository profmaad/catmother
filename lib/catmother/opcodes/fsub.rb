module CatMother
  module Opcode
    class Fsub
      MNEMONIC = "fsub"
      OPCODE = 0x66
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Subtract float"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
