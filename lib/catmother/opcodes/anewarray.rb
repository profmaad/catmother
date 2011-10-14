require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Anewarray
      MNEMONIC = "anewarray"
      OPCODE = 0xbd
      OPERANDS = 2
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Create new array of reference"
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
