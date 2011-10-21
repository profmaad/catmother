require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Iconst_0
      MNEMONIC = "iconst_0"
      OPCODE = 0x03
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
