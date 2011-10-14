module CatMother
  module Opcode
    class Fstore_0
      MNEMONIC = "fstore_0"
      OPCODE = 0x43
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
