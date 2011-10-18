require 'catmother/binary_helpers'
require 'catmother/opcode_groups/branch_wide'

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
      
      include CatMother::OpcodeGroup::BranchWide

      def initialize(io, pc)
        parse_operands(io)
      end
    end
  end
end
