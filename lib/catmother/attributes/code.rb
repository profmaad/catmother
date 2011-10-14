require 'catmother/binary_helpers'
require 'catmother/attribute_parser'
require 'catmother/bytecode_parser'

module CatMother
  module Attribute
    class Code
      IDENTIFIER = "Code"

      attr_reader :max_stack, :max_locals, :code_length, :code_start, :exceptions, :attributes
      attr_reader :code, :disassembly

      def initialize(io, length, constants)
        @exceptions = []
        @attributes = []
        @constants = constants

        parse(io)
      end

      def read_code(io)
        io.pos = @code_start
        @code = io.read(@code_length)
      end
      def parse_code(io)
        parser = BytecodeParser.new
        @disassembly = parser.parse(io, @code_length)
        if @disassembly.nil?
          io.pos = @code_start+@code_length
        end
      end

      def parse(io)
        @max_stack = BinaryHelpers::read_u2(io)
        @max_locals = BinaryHelpers::read_u2(io)

        @code_length = BinaryHelpers::read_u4(io)
        @code_start = io.pos
        parse_code(io)

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

      def parse_attributes(io)
        attributes_count = BinaryHelpers::read_u2(io)

        parser = AttributeParser.new(@constants)
        attributes_count.times do
          @attributes.push(parser.parse(io))
        end
      end
    end
  end
end
