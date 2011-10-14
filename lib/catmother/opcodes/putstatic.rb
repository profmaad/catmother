require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Putstatic
      MNEMONIC = "putstatic"
      OPCODE = 0xb3
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Set static field in class"
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
