module CatMother
  module Opcode
    class Ixor
      MNEMONIC = "ixor"
      OPCODE = 0x82
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean XOR int"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
