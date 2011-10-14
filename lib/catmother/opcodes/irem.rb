module CatMother
  module Opcode
    class Irem
      MNEMONIC = "irem"
      OPCODE = 0x70
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Remainder int"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
