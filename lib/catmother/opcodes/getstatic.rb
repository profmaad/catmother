require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Getstatic
      MNEMONIC = "getstatic"
      OPCODE = 0xb2
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Get static field from class"
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
