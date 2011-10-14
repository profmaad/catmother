module CatMother
  module Opcode
    class Dstore
      MNEMONIC = "dstore"
      OPCODE = 0x39
      OPERANDS = 1
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store double into local variable"
      DESCRIPTION = ""

	attr_reader :index

      def initialize(io)
	@index = io.readbyte
      end
    end
  end
end
