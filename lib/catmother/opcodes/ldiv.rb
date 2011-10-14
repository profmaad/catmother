module CatMother
  module Opcode
    class Ldiv
      MNEMONIC = "ldiv"
      OPCODE = 0x6d
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Divide long"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
