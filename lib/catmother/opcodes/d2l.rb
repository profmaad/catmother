module CatMother
  module Opcode
    class D2l
      MNEMONIC = "d2l"
      OPCODE = 0x8f
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert double to long"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
