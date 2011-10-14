module CatMother
  module Opcode
    class Multinewarray
      MNEMONIC = "multinewarray"
      OPCODE = 0xc5
      OPERANDS = 3
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Create new multidimensional array"
      DESCRIPTION = ""

	attr_reader :indexbyte1, :indexbyte2, :dimensions

      def initialize(io, pc)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
	@dimensions = io.readbyte
      end

      def length
        return 3
      end
    end
  end
end
