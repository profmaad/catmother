module CatMother
  module Opcode
    class Lxor
      MNEMONIC = "lxor"
      OPCODE = 0x83
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean XOR long"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
