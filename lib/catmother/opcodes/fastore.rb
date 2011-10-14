module CatMother
  module Opcode
    class Fastore
      MNEMONIC = "fastore"
      OPCODE = 0x51
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into float array"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
