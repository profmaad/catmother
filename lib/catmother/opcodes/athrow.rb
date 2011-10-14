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

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
