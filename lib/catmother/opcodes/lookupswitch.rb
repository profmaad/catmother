module CatMother
  module Opcode
    class Lookupswitch
      MNEMONIC = "lookupswitch"
      OPCODE = 0xab
      OPERANDS = 8
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Access jump table by key match and jump"
      DESCRIPTION = ""

      def initialize(io)
	# THIS IS RIDICULOUS!!!
      end
    end
  end
end
