module CatMother
  module Opcode
    class Aaload
      MNEMONIC = "aaload"
      OPCODE = 0x32
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load reference from array"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end