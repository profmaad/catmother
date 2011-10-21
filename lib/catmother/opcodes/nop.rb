require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Nop
      MNEMONIC = "nop"
      OPCODE = 0x00
      OPERANDS = 0
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Do nothing"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
