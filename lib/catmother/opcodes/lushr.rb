module CatMother
  module Opcode
    class Lushr
      MNEMONIC = "lushr"
      OPCODE = 0x7d
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Logical shift right long"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
