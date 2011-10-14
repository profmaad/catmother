module CatMother
  module Opcode
    class Lstore
      MNEMONIC = "lstore"
      OPCODE = 0x37
      OPERANDS = 1
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store long into local variable"
      DESCRIPTION = ""

	attr_reader :index

      def initialize(io)
	@index = io.readbyte
      end
    end
  end
end
