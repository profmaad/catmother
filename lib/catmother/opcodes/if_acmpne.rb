require 'catmother/binary_helpers'
require 'catmother/opcode_groups/branch'

module CatMother
  module Opcode
    class If_acmpne
      MNEMONIC = "if_acmpne"
      OPCODE = 0xa6
      OPERANDS = 2
      POPS = 2
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if reference comparison succeeds (not equal)"
      DESCRIPTION = ""
      
      include CatMother::OpcodeGroup::Branch

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
