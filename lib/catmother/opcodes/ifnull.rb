module CatMother
  module Opcode
    class Ifnull
      MNEMONIC = "ifnull"
      OPCODE = 0xc6
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if reference is null"
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
