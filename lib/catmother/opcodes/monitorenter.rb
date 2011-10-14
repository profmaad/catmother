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

      def initialize(io)
      end
    end
  end
end
