module CatMother
  module Opcode
    class Fcmpl
      MNEMONIC = "fcmpl"
      OPCODE = 0x95
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Compare float"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end