module CatMother
  module Opcode
    class Istore
      MNEMONIC = "istore"
      OPCODE = 0x36
      OPERANDS = 1
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store int into local variable"
      DESCRIPTION = ""

	attr_reader :index

      def initialize(io)
	@index = io.readbyte
      end
    end
  end
end
