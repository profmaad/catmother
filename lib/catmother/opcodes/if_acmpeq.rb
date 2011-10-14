module CatMother
  module Opcode
    class If_acmpeq
      MNEMONIC = "if_acmpeq"
      OPCODE = 0xa5
      OPERANDS = 2
      POPS = 2
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if reference comparison succeeds (equal)"
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
