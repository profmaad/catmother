module CatMother
  module Opcode
    class F2d
      MNEMONIC = "f2d"
      OPCODE = 0x8d
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert float to double"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
