require 'catmother/binary_helpers'

module CatMother
  module Attribute
    class LocalVariableTable
      IDENTIFIER = "LocalVariableTable"

      attr_reader :local_variables

      def initialize(io, length, constants)
        @local_variables = []

        parse(io)
      end

      def parse(io)
        local_variables_count = BinaryHelpers::read_u2(io)

        local_variables_count.times do
          @local_variables.push({:start_pc => BinaryHelpers::read_u2(io), :length => BinaryHelpers::read_u2(io), :name => BinaryHelpers::read_u2(io), :descriptor => BinaryHelpers::read_u2(io), :index => BinaryHelpers::read_u2(io)})
        end
      end
    end
  end
end
