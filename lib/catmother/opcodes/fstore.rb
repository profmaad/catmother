module CatMother
  module Opcode
    class Fstore
      MNEMONIC = "fstore"
      OPCODE = 0x38
      OPERANDS = 1
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store float into local variable"
      DESCRIPTION = ""

	attr_reader :index

      def initialize(io)
	@index = io.readbyte
      end
    end
  end
end
