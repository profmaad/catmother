module CatMother
  module Opcode
    class Imul
      MNEMONIC = "imul"
      OPCODE = 0x68
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Multiply int"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
