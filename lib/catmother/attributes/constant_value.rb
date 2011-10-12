require 'catmother/binary_helpers'

module CatMother
  module Attribute
    class ConstantValue
      attr_reader :name
      attr_reader :value

      def initialize(io, length)
        @value = BinaryHelpers::read_u2(io)
      end
    end
  end
end
