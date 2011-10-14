module CatMother
  module Opcode
    class Areturn
      MNEMONIC = "areturn"
      OPCODE = 0xb0
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return reference from method"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
