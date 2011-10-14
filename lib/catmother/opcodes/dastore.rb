module CatMother
  module Opcode
    class Dastore
      MNEMONIC = "dastore"
      OPCODE = 0x52
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into double array"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
