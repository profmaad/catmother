module CatMother
  module Opcode
    class Impdep1
      MNEMONIC = "impdep1"
      OPCODE = 0xfe
      OPERANDS = 0
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Reserved Opcode"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
