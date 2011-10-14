module CatMother
  module Opcode
    class Fmul
      MNEMONIC = "fmul"
      OPCODE = 0x6a
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Multiply float"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
