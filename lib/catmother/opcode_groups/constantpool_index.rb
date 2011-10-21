require 'catmother/binary_helpers'

module CatMother
  module OpcodeGroup
    module ConstantpoolIndex
      attr_reader :index

      def parse_operands(io, pc)
        @index = BinaryHelpers::read_u2(io)
      end

      def operands_length
        return 2
      end

      def operands_to_s
        return @index
      end
      def operands_to_h
        return {:index => @index}
      end
    end
  end
end
