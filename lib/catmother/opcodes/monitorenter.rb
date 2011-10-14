module CatMother
  module Opcode
    class Monitorenter
      MNEMONIC = "monitorenter"
      OPCODE = 0xc2
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Enter monitor for object"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
