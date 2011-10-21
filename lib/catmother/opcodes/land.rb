require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Land
      MNEMONIC = "land"
      OPCODE = 0x7f
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean AND long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
