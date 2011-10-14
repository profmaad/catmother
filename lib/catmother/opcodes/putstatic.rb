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

      def initialize(io, pc)
	@indexbyte1 = io.readbyte	
	@indexbyte2 = io.readbyte	
      end

      def length
        return 2
      end
    end
  end
end
