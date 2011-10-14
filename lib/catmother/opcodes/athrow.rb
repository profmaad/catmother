module CatMother
  module Opcode
    class Athrow
      MNEMONIC = "athrow"
      OPCODE = 0xbf
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Throw exception or error"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
