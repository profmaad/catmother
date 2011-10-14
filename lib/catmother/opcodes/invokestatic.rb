require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Invokestatic
      MNEMONIC = "invokestatic"
      OPCODE = 0xb8
      OPERANDS = 2
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Invoke a class (static) method"
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
