module CatMother
  module Opcode
    class Baload
      MNEMONIC = "baload"
      OPCODE = 0x33
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load byte or boolean from array"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
