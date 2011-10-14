module CatMother
  module Opcode
    class Invokestatic
      MNEMONIC = "invokestatic"
      OPCODE = 0xb8
      OPERANDS = 2
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Invoke a class (static) method"
      DESCRIPTION = ""

	attr_reader :indexbyte1, :indexbyte2

      def initialize(io)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
      end
    end
  end
end