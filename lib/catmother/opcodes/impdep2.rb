module CatMother
  module Opcode
    class Impdep2
      MNEMONIC = "impdep2"
      OPCODE = 0xff
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
