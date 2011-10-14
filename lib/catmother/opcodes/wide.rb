require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Wide
      MNEMONIC = "wide"
      OPCODE = 0xc4
      OPERANDS = 3
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Extend local variable index by additional bytes"
      DESCRIPTION = ""

      attr_reader :opcode, :index
      attr_reader :const

      def initialize(io, pc)
	@opcode = io.readbyte
	@index = BinaryHelpers::read_u2(io)

	if @opcode == 0x84 # iinc
          @const = BinaryHelpers::read_s2(io)
	end
      end

      def length
        return 3
      end
    end
  end
end
