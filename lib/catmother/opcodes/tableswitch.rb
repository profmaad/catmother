module CatMother
  module Opcode
    class Tableswitch
      MNEMONIC = "tableswitch"
      OPCODE = 0xaa
      OPERANDS = 12
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Access jump table by index and jump"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
