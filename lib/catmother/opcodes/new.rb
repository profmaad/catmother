module CatMother
  module Opcode
    class New
      MNEMONIC = "new"
      OPCODE = 0xbb
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Create new object"
      DESCRIPTION = ""

	attr_reader :indexbyte1, :indexbyte2

      def initialize(io)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
      end
    end
  end
end
