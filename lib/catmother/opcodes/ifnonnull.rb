module CatMother
  module Opcode
    class Ifnonnull
      MNEMONIC = "ifnonnull"
      OPCODE = 0xc7
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if reference not null"
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
