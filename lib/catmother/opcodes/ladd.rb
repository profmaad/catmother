module CatMother
  module Opcode
    class Ladd
      MNEMONIC = "ladd"
      OPCODE = 0x61
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Add long"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
