require 'catmother/binary_helpers'

module CatMother
  module Attribute
    class InnerClasses
      IDENTIFIER = "InnerClasses"

      attr_reader :classes

      def initialize(io, length, constants)
        @classes = []

        parse(io)
      end

      def parse(io)
        classes_count = BinaryHelpers::read_u2(io)

        classes_count.times do
          @classes.push({:inner_class_info => BinaryHelpers::read_u2(io), :outer_class_info => BinaryHelpers::read_u2(io), :inner_name => BinaryHelpers::read_u2(io), :inner_class_access_flags => BinaryHelpers::read_u2(io)})
        end
      end
    end
  end
end
