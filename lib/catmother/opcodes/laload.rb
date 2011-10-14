module CatMother
  module Opcode
    class Laload
      MNEMONIC = "laload"
      OPCODE = 0x2f
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load long from array"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
