module CatMother
  module Opcode
    class If_icmpge
      MNEMONIC = "if_icmpge"
      OPCODE = 0xa2
      OPERANDS = 2
      POPS = 2
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if int comparison succeeds (>=)"
      DESCRIPTION = ""

        attr_reader :branchbyte1, :branchbyte2

      def initialize(io)
        @branchbyte1 = io.readbyte
        @branchbyte2 = io.readbyte
      end
    end
  end
end
