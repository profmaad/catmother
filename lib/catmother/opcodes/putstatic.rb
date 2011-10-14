module CatMother
  module Opcode
    class Putstatic
      MNEMONIC = "putstatic"
      OPCODE = 0xb3
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Set static field in class"
      DESCRIPTION = ""

	attr_reader :indexbyte1, :indexbyte2

      def initialize(io)
	@indexbyte1 = io.readbyte	
	@indexbyte2 = io.readbyte	
      end
    end
  end
end
