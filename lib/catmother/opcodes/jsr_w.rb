module CatMother
  module Opcode
    class Jsr_w
      MNEMONIC = "jsr_w"
      OPCODE = 0xc9
      OPERANDS = 4
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Jump subroutine (wide index)"
      DESCRIPTION = ""

      attr_reader :branchbyte1, :branchbyte2, :branchbyte3, :branchbyte4

      def initialize(io, pc)
	@branchbyte1 = io.readbyte
	@branchbyte2 = io.readbyte
	@branchbyte3 = io.readbyte
	@branchbyte4 = io.readbyte
      end

      def length
        return 2
      end
    end
  end
end
