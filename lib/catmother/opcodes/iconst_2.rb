require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Iconst_2
      MNEMONIC = "iconst_2"
      OPCODE = 0x05
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push int constant"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
