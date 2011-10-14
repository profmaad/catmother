require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class New
      MNEMONIC = "new"
      OPCODE = 0xbb
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Create new object"
      DESCRIPTION = ""

      attr_reader :indexbyte1, :indexbyte2

      def initialize(io, pc)
	@index = BinaryHelpers::read_u2(io)
      end

      def length
        return 2
      end
    end
  end
end
