module CatMother
  module Opcode
    class Aload_2
      MNEMONIC = "aload_2"
      OPCODE = 0x2c
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load reference from array"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
