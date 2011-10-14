module CatMother
  module Opcode
    class Anewarray
      MNEMONIC = "anewarray"
      OPCODE = 0xbd
      OPERANDS = 2
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Create new array of reference"
      DESCRIPTION = ""

      attr_reader :indexbyte1, :indexbyte2

      def initialize(io, pc)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
      end

      def length
        return 2
      end
    end
  end
end
