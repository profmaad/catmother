module CatMother
  module Opcode
    class Land
      MNEMONIC = "land"
      OPCODE = 0x7f
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean AND long"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
