require 'catmother/binary_helpers'

module CatMother
  module Attribute
    class Exceptions
      IDENTIFIER = "Exceptions"

      attr_reader :exceptions

      def initialize(io, length, constants)
        @exceptions = []

        parse(io)
      end

      def parse(io)
        exceptions_count = BinaryHelpers::read_u2(io)

        exceptions_count.times do
          @exceptions.push(BinaryHelpers::read_u2(io))
        end
      end
    end
  end
end
