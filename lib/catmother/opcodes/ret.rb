module CatMother
  module Opcode
    class Ret
      MNEMONIC = "ret"
      OPCODE = 0xa9
      OPERANDS = 1
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Return from subroutine"
      DESCRIPTION = ""

	attr_reader :index

      def initialize(io)
	@index = io.readbyte
      end
    end
  end
end
