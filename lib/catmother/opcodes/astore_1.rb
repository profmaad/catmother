module CatMother
  module Opcode
    class Astore_1
      MNEMONIC = "astore_1"
      OPCODE = 0x4c
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store reference into local variable"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
