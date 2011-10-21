require 'catmother/binary_helpers'

module CatMother
  module OpcodeGroup
    module Branch
      attr_reader :branch_offset

      def parse_operands(io, pc)
        @branch_offset = BinaryHelpers::read_s2(io)
      end

      def operands_length
        return 2
      end

      def operands_to_s
        return @branch_offset.to_s
      end
      def operands_to_h
        return {:branch_offset => @branch_offset}
      end
    end
  end
end
