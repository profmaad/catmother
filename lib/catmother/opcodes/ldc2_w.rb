module CatMother
  module Opcode
    class Ldc2_w
      MNEMONIC = "ldc2_w"
      OPCODE = 0x14
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push long or double from runtime constant pool (wide index)"
      DESCRIPTION = ""

	attr_reader :indexbyte1, :indexbyte2

      def initialize(io)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
      end
    end
  end
end
