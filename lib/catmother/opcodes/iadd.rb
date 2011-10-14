module CatMother
  module Opcode
    class Iadd
      MNEMONIC = "iadd"
      OPCODE = 0x60
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Add int"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
