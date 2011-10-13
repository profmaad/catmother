require 'catmother/binary_helpers'

module CatMother
  module Attribute
    class ConstantValue
      IDENTIFIER = "ConstantValue"

      attr_reader :name
      attr_reader :value

      def initialize(io, length, constants)
        @value = BinaryHelpers::read_u2(io)
      end
    end
  end
end
