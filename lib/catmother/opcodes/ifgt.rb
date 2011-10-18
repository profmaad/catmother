require 'catmother/binary_helpers'
require 'catmother/opcode_groups/branch'

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

      include CatMother::OpcodeGroup::Branch

      def initialize(io, pc)
        parse_operands(io)
      end
    end
  end
end
