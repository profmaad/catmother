module CatMother
  module Opcode
    class Fstore_3
      MNEMONIC = "fstore_3"
      OPCODE = 0x46
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store float into local variable"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
