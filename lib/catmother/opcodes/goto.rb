require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Goto
      MNEMONIC = "goto"
      OPCODE = 0xa7
      OPERANDS = 2
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch always"
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
