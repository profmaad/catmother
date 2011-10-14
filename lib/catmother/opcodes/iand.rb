module CatMother
  module Opcode
    class Iand
      MNEMONIC = "iand"
      OPCODE = 0x7e
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean AND int"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
