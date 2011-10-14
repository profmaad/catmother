module CatMother
  module Opcode
    class Ddiv
      MNEMONIC = "ddiv"
      OPCODE = 0x6f
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Divide double"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
