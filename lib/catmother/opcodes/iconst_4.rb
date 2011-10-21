require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Iconst_4
      MNEMONIC = "iconst_4"
      OPCODE = 0x07
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
