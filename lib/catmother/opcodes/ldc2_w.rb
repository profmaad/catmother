require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Ldc2_w
      MNEMONIC = "ldc2_w"
      OPCODE = 0x14
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push long or double from runtime constant pool (wide index)"
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
