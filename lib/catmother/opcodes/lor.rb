module CatMother
  module Opcode
    class Lor
      MNEMONIC = "lor"
      OPCODE = 0x81
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean OR long"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
