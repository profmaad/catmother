module CatMother
  module Opcode
    class Fload_3
      MNEMONIC = "fload_3"
      OPCODE = 0x25
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
