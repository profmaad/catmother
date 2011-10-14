require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Ldc_w
      MNEMONIC = "ldc_w"
      OPCODE = 0x13
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push item from runtime constant pool (wide index)"
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
