module CatMother
  module Opcode
    class Invokevirtual
      MNEMONIC = "invokevirtual"
      OPCODE = 0xb6
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Invoke instance method; dispatch based on class"
      DESCRIPTION = ""

	attr_reader :indexbyte1, :indexbyte2

      def initialize(io)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
      end
    end
  end
end
