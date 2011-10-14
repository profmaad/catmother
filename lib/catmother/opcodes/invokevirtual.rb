require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Invokevirtual
      MNEMONIC = "invokevirtual"
      OPCODE = 0xb6
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Invoke instance method; dispatch based on class"
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
