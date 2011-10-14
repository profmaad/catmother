module CatMother
  module Opcode
    class Ddiv
      MNEMONIC = "ddiv"
      OPCODE = 0x6f
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Divide double"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
