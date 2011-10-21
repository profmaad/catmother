require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Invokeinterface
      MNEMONIC = "invokeinterface"
      OPCODE = 0xb9
      OPERANDS = 4
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Invoke interface method"
      DESCRIPTION = ""

      attr_reader :index, :number_of_arguments

      def initialize(io, pc)
        parse_operands(io, pc)
      end

      def parse_operands(io, pc)
	@index = BinaryHelpers::read_u2(io)
	@number_of_arguments = io.readbyte
	io.readbyte # 0
      end

      def operands_length
        return 4
      end

      def operands_to_s
        return "#{@index}, #{@number_of_arguments}"
      end
      def operands_to_h
        return {:index => @index, :number_of_arguments => @number_of_arguments}
      end
    end
  end
end
