module CatMother
  module Opcode
    class If_acmpne
      MNEMONIC = "if_acmpne"
      OPCODE = 0xa6
      OPERANDS = 2
      POPS = 2
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if reference comparison succeeds (not equal)"
      DESCRIPTION = ""

	attr_reader :branchbyte1, :branchbyte2

      def initialize(io)
	@branchbyte1 = io.readbyte
	@branchbyte2 = io.readbyte
      end
    end
  end
end
