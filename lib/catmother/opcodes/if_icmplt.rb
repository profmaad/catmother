module CatMother
  module Opcode
    class If_icmplt
      MNEMONIC = "if_icmplt"
      OPCODE = 0xa1
      OPERANDS = 2
      POPS = 2
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if int comparison succeeds (<=)"
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
