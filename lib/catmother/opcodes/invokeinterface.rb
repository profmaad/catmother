module CatMother
  module Opcode
    class Invokeinterface
      MNEMONIC = "invokeinterface"
      OPCODE = 0xb9
      OPERANDS = 4
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Invoke interface method"
      DESCRIPTION = ""

	attr_reader :indexbyte1, :indexbyte2, :count

      def initialize(io)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
	@count = io.readbyte
	io.readbyte #0
      end
    end
  end
end
