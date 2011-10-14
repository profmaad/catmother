module CatMother
  module Opcode
    class Castore
      MNEMONIC = "castore"
      OPCODE = 0x55
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into char array"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
