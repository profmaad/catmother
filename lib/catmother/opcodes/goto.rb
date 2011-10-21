require 'catmother/binary_helpers'
require 'catmother/opcode_groups/branch'

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

      include CatMother::OpcodeGroup::Branch

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
