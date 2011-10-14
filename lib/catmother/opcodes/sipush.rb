module CatMother
  module Opcode
    class Sipush
      MNEMONIC = "sipush"
      OPCODE = 0x11
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push short"
      DESCRIPTION = ""

	attr_reader :byte1, :byte2

      def initialize(io)
	@byte1 = io.readbyte
	@byte2 = io.readbyte
      end
    end
  end
end
