require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class If_icmpge
      MNEMONIC = "if_icmpge"
      OPCODE = 0xa2
      OPERANDS = 2
      POPS = 2
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if int comparison succeeds (>=)"
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
