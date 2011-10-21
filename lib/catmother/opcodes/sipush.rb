require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Sipush
      MNEMONIC = "sipush"
      OPCODE = 0x11
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push short"
      DESCRIPTION = ""

      attr_reader :value

      def initialize(io, pc)
        parse_operands(io, pc)
      end
      
      def parse_operands(io, pc)
	@value = BinaryHelpers::read_s2(io)
      end

      def operands_length
        return 2
      end

      def operands_to_s
        return @value.to_s
      end
      def operands_to_h
        return {:value => @value}
      end
    end
  end
end
