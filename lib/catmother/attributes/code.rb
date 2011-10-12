require 'catmother/binary_helpers'

module CatMother
  module Attribute
    class Code
      attr_reader :name
      attr_reader :max_stack, :max_locals, :code_length, :code_start, :exceptions, :attributes
      attr_reader :code

      def initialize(io, length)
        @exceptions = []
        @attributes = []

        parse(io)
      end

      def read_code(io)
        io.pos = @code_start
        @code = io.read(@code_length)
      end

      def parse(io)
        @max_stack = BinaryHelpers::read_u2(io)
        @max_locals = BinaryHelpers::read_u2(io)

        @code_length = BinaryHelpers::read_u4(io)
        @code_start = io.pos

        parse_exceptions(io)
        parse_attributes(io)
      end

      def parse_exceptions(io)
        exceptions_count = BinaryHelpers::read_u2(io)

        exceptions_count.times do
          parse_exception(io)
        end
      end
      def parse_exception(io)
        @exceptions.push({:start_pc => BinaryHelpers::read_u2(io), :end_pc => BinaryHelpers::read_u2(io), :handler_pc => BinaryHelpers::read_u2(io), :catch_type => BinaryHelpers::read_u2(io)})
      end

      # CODE DUPLICATION AHEAD !!!
      def parse_attributes(io)
        attributes_count = BinaryHelpers::read_u2(io)
        
        attributes_count.times do
          parse_attribute(io, @attributes)
        end
      end
      def parse_attribute(io, list)
        name = BinaryHelpers::read_u2(io)
        length = BinaryHelpers::read_u4(io)
        
        io.read(length)
      end
    end
  end
end
