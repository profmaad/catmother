module CatMother
  module Opcode
    class Lcmp
      MNEMONIC = "lcmp"
      OPCODE = 0x94
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Compare long"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
