module CatMother
  module Opcode
    class Dsub
      MNEMONIC = "dsub"
      OPCODE = 0x67
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Subtract double"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
