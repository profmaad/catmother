module CatMother
  module Opcode
    class Goto_w
      MNEMONIC = "goto_w"
      OPCODE = 0xc8
      OPERANDS = 4
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch always (wide index)"
      DESCRIPTION = ""

	attr_reader :branchbyte1, :branchbyte2, :branchbyte3, :branchbyte4

      def initialize(io)
	@branchbyte1 = io.readbyte
	@branchbyte2 = io.readbyte
	@branchbyte3 = io.readbyte
	@branchbyte4 = io.readbyte
      end
    end
  end
end
