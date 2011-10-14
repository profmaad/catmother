module CatMother
  module Opcode
    class Lreturn
      MNEMONIC = "lreturn"
      OPCODE = 0xad
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return long from method"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
