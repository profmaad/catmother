module CatMother
  module Opcode
    class Frem
      MNEMONIC = "frem"
      OPCODE = 0x72
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Remainder float"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
