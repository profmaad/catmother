require 'catmother/binary_helpers'

module CatMother
  module Attribute
    class SourceFile
      IDENTIFIER = "SourceFile"

      attr_reader :source_file

      def initialize(io, length, constants)
        @source_file = BinaryHelpers::read_u2(io)
      end
    end
  end
end
