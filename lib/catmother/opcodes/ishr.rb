module CatMother
  module Opcode
    class Ishr
      MNEMONIC = "ishr"
      OPCODE = 0x7a
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Arithmetic shift right int"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
