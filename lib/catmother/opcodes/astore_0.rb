module CatMother
  module Opcode
    class Astore_0
      MNEMONIC = "astore_0"
      OPCODE = 0x4b
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
