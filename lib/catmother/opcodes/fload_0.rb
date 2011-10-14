module CatMother
  module Opcode
    class Fload_0
      MNEMONIC = "fload_0"
      OPCODE = 0x22
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load float from local variable"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
