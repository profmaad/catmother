module CatMother
  module Opcode
    class Iflt
      MNEMONIC = "iflt"
      OPCODE = 0x9b
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if int comparison with zero succeeds (< 0)"
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
