require 'catmother/binary_helpers'

module CatMother
  module OpcodeGroup
    module BranchWide
      attr_reader :branch_offset

      def parse_operands(io, pc)
        @branch_offset = BinaryHelpers::read_s4(io)
      end

      def operands_length
        return 4
      end

      def operands_to_s
        return @branch_offset
      end
      def operands_to_h
        return {:branch_offset => @branch_offset}
      end
    end
  end
end
