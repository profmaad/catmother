module CatMother
  module Opcode
    class Ldc_w
      MNEMONIC = "ldc_w"
      OPCODE = 0x13
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push item from runtime constant pool (wide index)"
      DESCRIPTION = ""

	attr_reader :indexbyte1, :indexbyte2

      def initialize(io)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
      end
    end
  end
end
