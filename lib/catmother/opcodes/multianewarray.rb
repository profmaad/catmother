require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Multinewarray
      MNEMONIC = "multinewarray"
      OPCODE = 0xc5
      OPERANDS = 3
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Create new multidimensional array"
      DESCRIPTION = ""

	attr_reader :index, :dimensions

      def initialize(io, pc)
        @index = BinaryHelpers::read_u2(io)
	@dimensions = io.readbyte
      end

      def length
        return 3
      end
    end
  end
end
