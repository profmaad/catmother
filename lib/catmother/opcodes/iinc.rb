require 'catmother/binary_helpers'

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

      attr_reader :index, :increment

      def initialize(io, pc)
        parse_operands(io, pc)
      end

      def parse_operands(io, pc)
	@index = io.readbyte
	@increment = BinaryHelpers::read_s1(io)
      end

      def operands_length
        return 2
      end

      def operands_to_s
        if @increment < 0
          increment_string = @increment
        else
          increment_string = "+#{@increment}"
        end
        return "#{@index}, #{increment_string}"
      end
      def operands_to_h
        return {:index => @index, :increment => @increment}
      end
    end
  end
end
