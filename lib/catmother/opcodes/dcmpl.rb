module CatMother
  module Opcode
    class Dcmpl
      MNEMONIC = "dcmpl"
      OPCODE = 0x97
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Compare double"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
