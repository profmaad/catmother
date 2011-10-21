require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Iconst_m1
      MNEMONIC = "iconst_m1"
      OPCODE = 0x02
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push int constant"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
