module CatMother
  module Opcode
    class D2i
      MNEMONIC = "d2i"
      OPCODE = 0x8e
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert double to int"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
