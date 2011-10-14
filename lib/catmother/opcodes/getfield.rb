module CatMother
  module Opcode
    class Getfield
      MNEMONIC = "getfield"
      OPCODE = 0xb4
      OPERANDS = 2
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Fetch field from object"
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
