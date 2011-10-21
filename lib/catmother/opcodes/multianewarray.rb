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
        parse_operands(io, pc)
      end

      def parse_operands(io, pc)
        @index = BinaryHelpers::read_u2(io)
	@dimensions = io.readbyte
      end

      def operands_length
        return 3
      end

      def operands_to_s
        return "#{@index}, #{@dimensions}"
      end

      def operands_to_h
        return {:index => @index, :dimensions => @dimensions}
      end
    end
  end
end
