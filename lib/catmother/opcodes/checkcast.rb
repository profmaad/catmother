require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Checkcast
      MNEMONIC = "checkcast"
      OPCODE = 0xc0
      OPERANDS = 2
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Check whether object is of given type"
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
