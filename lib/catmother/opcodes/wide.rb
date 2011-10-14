module CatMother
  module Opcode
    class Wide
      MNEMONIC = "wide"
      OPCODE = 0xc4
      OPERANDS = 3
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Extend local variable index by additional bytes"
      DESCRIPTION = ""

      attr_reader :opcode, :indexbyte1, :indexbyte2
      attr_reader :constbyte1, :constbyte2

      def initialize(io, pc)
	@opcode = io.readbyte
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte

	if @opcode == 0x84 # iinc
          @constbyte1 = io.readbyte
          @constbyte2 = io.readbyte
	end
      end

      def length
        return 3
      end
    end
  end
end
