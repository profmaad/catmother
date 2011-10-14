module CatMother
  module Opcode
    class Arraylength
      MNEMONIC = "arraylength"
      OPCODE = 0xbe
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Get length of array"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end