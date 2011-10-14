module CatMother
  module Opcode
    class Dmul
      MNEMONIC = "dmul"
      OPCODE = 0x6b
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Multiply double"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end