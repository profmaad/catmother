require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Putfield
      MNEMONIC = "putfield"
      OPCODE = 0xb5
      OPERANDS = 2
      POPS = 2
      PUSHES = 0
      SHORT_DESCRIPTION = "Set field in object"
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
