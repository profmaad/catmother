require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Getfield
      MNEMONIC = "getfield"
      OPCODE = 0xb4
      OPERANDS = 2
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Fetch field from object"
      DESCRIPTION = ""

      attr_reader :index

      def initialize(io, pc)
        @index = BinaryHelpers::read_u2(io)
      end

      def length
        return 2
      end
    end
  end
end
