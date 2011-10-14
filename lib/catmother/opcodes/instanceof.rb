module CatMother
  module Opcode
    class Instanceof
      MNEMONIC = "instanceof"
      OPCODE = 0xc1
      OPERANDS = 2
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Determine if object is of given type"
      DESCRIPTION = ""

	attr_reader :indexbyte1, :indexbyte2

      def initialize(io)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
      end
    end
  end
end
