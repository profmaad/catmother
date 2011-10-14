module CatMother
  module Opcode
    class F2i
      MNEMONIC = "f2i"
      OPCODE = 0x8b
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert float to int"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
