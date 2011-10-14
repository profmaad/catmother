module CatMother
  module Opcode
    class Daload
      MNEMONIC = "daload"
      OPCODE = 0x31
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load double from array"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
