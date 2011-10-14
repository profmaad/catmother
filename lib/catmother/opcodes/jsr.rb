require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Jsr
      MNEMONIC = "jsr"
      OPCODE = 0xa8
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Jump subroutine"
      DESCRIPTION = ""

      attr_reader :branch_offset
      
      def initialize(io, pc)
	@branch_offset = BinaryHelpers::read_s2(io)
      end

      def length
        return 2
      end
    end
  end
end
