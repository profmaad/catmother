module CatMother
  module Opcode
    class F2l
      MNEMONIC = "f2l"
      OPCODE = 0x8c
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert float to long"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
