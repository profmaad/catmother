module CatMother
  module Opcode
    class Lcmp
      MNEMONIC = "lcmp"
      OPCODE = 0x94
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Compare long"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
