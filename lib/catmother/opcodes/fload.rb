module CatMother
  module Opcode
    class Fload
      MNEMONIC = "fload"
      OPCODE = 0x17
      OPERANDS = 1
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load float from local variable"
      DESCRIPTION = ""

	attr_reader :index

      def initialize(io)
	@index = io.readbyte
      end
    end
  end
end
