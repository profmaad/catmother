module CatMother
  module Opcode
    class Aconst_null
      MNEMONIC = "aconst_null"
      OPCODE = 0x01
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push null"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
