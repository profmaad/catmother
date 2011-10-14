module CatMother
  module Opcode
    class Lstore_2
      MNEMONIC = "lstore_2"
      OPCODE = 0x41
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store long into local variable"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
