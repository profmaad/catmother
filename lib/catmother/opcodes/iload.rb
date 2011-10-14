module CatMother
  module Opcode
    class Iload
      MNEMONIC = "iload"
      OPCODE = 0x15
      OPERANDS = 1
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load int from local variable"
      DESCRIPTION = ""

	attr_reader :index

      def initialize(io)
	@index = io.readbyte
      end
    end
  end
end
