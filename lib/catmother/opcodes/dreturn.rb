module CatMother
  module Opcode
    class Dreturn
      MNEMONIC = "dreturn"
      OPCODE = 0xaf
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return double from method"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
