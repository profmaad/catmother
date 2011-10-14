module CatMother
  module Opcode
    class Ireturn
      MNEMONIC = "ireturn"
      OPCODE = 0xac
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return int from method"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
