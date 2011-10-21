require 'catmother/binary_helpers'
require 'catmother/opcode_groups/branch'

module CatMother
  module Opcode
    class Ifnonnull
      MNEMONIC = "ifnonnull"
      OPCODE = 0xc7
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Branch if reference not null"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::Branch

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
