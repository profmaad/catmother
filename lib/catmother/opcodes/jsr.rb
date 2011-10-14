module CatMother
  module Opcode
    class Jsr
      MNEMONIC = "jsr"
      OPCODE = 0xa8
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Jump subroutine"
      DESCRIPTION = ""

      attr_reader :branchbyte1, :branchbyte2
      
      def initialize(io, pc)
	@branchbyte1 = io.readbyte
	@branchbyte2 = io.readbyte
      end

      def length
        return 2
      end
    end
  end
end
