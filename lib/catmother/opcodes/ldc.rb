module CatMother
  module Opcode
    class Ldc
      MNEMONIC = "ldc"
      OPCODE = 0x12
      OPERANDS = 1
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push item from runtime constant pool"
      DESCRIPTION = ""

	attr_reader :index

      def initialize(io)
	@index = io.readbyte
      end
    end
  end
end
