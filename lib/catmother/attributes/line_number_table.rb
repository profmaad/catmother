require 'catmother/binary_helpers'

module CatMother
  module Attribute
    class LineNumberTable
      IDENTIFIER = "LineNumberTable"

      attr_reader :line_numbers

      def initialize(io, length, constants)
        @line_numbers = []

        parse(io)
      end

      def parse(io)
        table_length = BinaryHelpers::read_u2(io)

        table_length.times do
          @line_numbers.push({:start_pc => BinaryHelpers::read_u2(io), :line_number => BinaryHelpers::read_u2(io)})
        end
      end
    end
  end
end
