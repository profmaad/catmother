require 'catmother/binary_helpers'

module CatMother
  module OpcodeGroup
    module ConstantpoolIndexShort
      attr_reader :index

      def parse_operands(io, pc)
        @index = io.readbyte
      end

      def operands_length
        return 1
      end

      def operands_to_s
        return @index.to_s
      end
      def operands_to_h
        return {:index => @index}
      end
    end
  end
end
