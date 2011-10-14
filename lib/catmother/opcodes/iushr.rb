module CatMother
  module Opcode
    class Iushr
      MNEMONIC = "iushr"
      OPCODE = 0x7c
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Logical shift right int"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
