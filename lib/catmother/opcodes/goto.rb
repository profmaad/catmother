module CatMother
  module Opcode
    class Goto
      MNEMONIC = "goto"
      OPCODE = 0xa7
      OPERANDS = 2
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch always"
      DESCRIPTION = ""

	attr_reader :branchbyte1, :branchbyte2

      def initialize(io)
	@branchbyte1 = io.readbyte
	@branchbyte2 = io.readbyte
      end
    end
  end
end
