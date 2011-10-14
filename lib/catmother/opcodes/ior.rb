module CatMother
  module Opcode
    class Ior
      MNEMONIC = "ior"
      OPCODE = 0x80
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean OR int"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
