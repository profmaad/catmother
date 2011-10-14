require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Ifgt
      MNEMONIC = "ifgt"
      OPCODE = 0x9d
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if int comparison with zero succeeds (> 0)"
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
