module CatMother
  module Opcode
    class Ifeq
      MNEMONIC = "ifeq"
      OPCODE = 0x99
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if int comparison with zero succeeds (=0)"
      DESCRIPTION = ""

	attr_reader :branchbyte1, :branchbyte2

      def initialize(io)
	@branchbyte1 = io.readbyte
	@branchbyte2 = io.readbyte
      end
    end
  end
end
