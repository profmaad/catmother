module CatMother
  module Opcode
    class Dload_1
      MNEMONIC = "dload_1"
      OPCODE = 0x27
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load double from local variable"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
