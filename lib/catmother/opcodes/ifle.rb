module CatMother
  module Opcode
    class Ifle
      MNEMONIC = "ifle"
      OPCODE = 0x9e
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if int comparison with zero succeeds (<= 0)"
      DESCRIPTION = ""

        attr_reader :branchbyte1, :branchbyte2

      def initialize(io)
        @branchbyte1 = io.readbyte
        @branchbyte2 = io.readbyte
      end
    end
  end
end
