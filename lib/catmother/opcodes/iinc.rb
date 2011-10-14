module CatMother
  module Opcode
    class Iinc
      MNEMONIC = "iinc"
      OPCODE = 0x84
      OPERANDS = 2
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Increment local variable by constant"
      DESCRIPTION = ""

	attr_reader :index, :const

      def initialize(io)
	@index = io.readbyte
	@const = io.readbyte
      end
    end
  end
end
