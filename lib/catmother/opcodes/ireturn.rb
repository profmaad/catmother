module CatMother
  module Opcode
    class Ireturn
      MNEMONIC = "ireturn"
      OPCODE = 0xac
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return int from method"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
