require 'catmother/binary_helpers'
require 'catmother/opcode_groups/branch'

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

      include CatMother::OpcodeGroup::Branch

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
