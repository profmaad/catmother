module CatMother
  module Opcode
    class Idiv
      MNEMONIC = "idiv"
      OPCODE = 0x6c
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Divide int"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
