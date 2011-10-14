module CatMother
  module Opcode
    class Dreturn
      MNEMONIC = "dreturn"
      OPCODE = 0xaf
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return double from method"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
