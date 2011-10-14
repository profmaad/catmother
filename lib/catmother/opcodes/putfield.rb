module CatMother
  module Opcode
    class Putfield
      MNEMONIC = "putfield"
      OPCODE = 0xb5
      OPERANDS = 2
      POPS = 2
      PUSHES = 0
      SHORT_DESCRIPTION = "Set field in object"
      DESCRIPTION = ""

	attr_reader :indexbyte1, :indexbyte2

      def initialize(io)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
      end
    end
  end
end
