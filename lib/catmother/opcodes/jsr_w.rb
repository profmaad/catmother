require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Jsr_w
      MNEMONIC = "jsr_w"
      OPCODE = 0xc9
      OPERANDS = 4
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Jump subroutine (wide index)"
      DESCRIPTION = ""

      attr_reader :branch_offset

      def initialize(io, pc)
	@branch_offset = BinaryHelpers::read_s4(io)
      end

      def length
        return 4
      end
    end
  end
end
