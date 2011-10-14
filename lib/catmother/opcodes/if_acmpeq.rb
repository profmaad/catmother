require  'catmother/binary_helpers'

module CatMother
  module Opcode
    class If_acmpeq
      MNEMONIC = "if_acmpeq"
      OPCODE = 0xa5
      OPERANDS = 2
      POPS = 2
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if reference comparison succeeds (equal)"
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
