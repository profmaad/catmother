require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Goto_w
      MNEMONIC = "goto_w"
      OPCODE = 0xc8
      OPERANDS = 4
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch always (wide index)"
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
