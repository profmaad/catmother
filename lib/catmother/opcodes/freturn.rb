module CatMother
  module Opcode
    class Freturn
      MNEMONIC = "freturn"
      OPCODE = 0xae
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return float from method"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
