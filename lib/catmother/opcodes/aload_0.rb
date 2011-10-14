module CatMother
  module Opcode
    class Aload_0
      MNEMONIC = "aload_0"
      OPCODE = 0x2a
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load reference from local variable"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
