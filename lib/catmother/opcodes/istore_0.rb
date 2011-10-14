module CatMother
  module Opcode
    class Istore_0
      MNEMONIC = "istore_0"
      OPCODE = 0x3b
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store int into local variable"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
