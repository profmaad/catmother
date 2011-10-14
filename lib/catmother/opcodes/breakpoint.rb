module CatMother
  module Opcode
    class Breakpoint
      MNEMONIC = "breakpoint"
      OPCODE = 0xca
      OPERANDS = 0
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Breakpoint"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
