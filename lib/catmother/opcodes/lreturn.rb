module CatMother
  module Opcode
    class Lreturn
      MNEMONIC = "lreturn"
      OPCODE = 0xad
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return long from method"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
