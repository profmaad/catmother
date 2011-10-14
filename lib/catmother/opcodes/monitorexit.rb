module CatMother
  module Opcode
    class Monitorexit
      MNEMONIC = "monitorexit"
      OPCODE = 0xc3
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Exit monitor for object"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
