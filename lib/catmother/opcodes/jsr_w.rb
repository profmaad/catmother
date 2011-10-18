require 'catmother/binary_helpers'
require 'catmother/opcode_groups/branch_wide'

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

      include CatMother::OpcodeGroup::BranchWide

      def initialize(io, pc)
        parse_operands(io)
      end
    end
  end
end
