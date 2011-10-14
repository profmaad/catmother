module CatMother
  module Opcode
    class Saload
      MNEMONIC = "saload"
      OPCODE = 0x35
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load short from array"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
