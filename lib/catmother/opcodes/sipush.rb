require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Sipush
      MNEMONIC = "sipush"
      OPCODE = 0x11
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push short"
      DESCRIPTION = ""

      attr_reader :value

      def initialize(io, pc)
	@value = BinaryHelpers::read_s2(io)
      end

      def length
        return 2
      end
    end
  end
end
