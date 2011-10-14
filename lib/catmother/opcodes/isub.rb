module CatMother
  module Opcode
    class Isub
      MNEMONIC = "isub"
      OPCODE = 0x64
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Subtract int"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
