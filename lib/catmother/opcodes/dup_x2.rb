require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dup_x2
      MNEMONIC = "dup_x2"
      OPCODE = 0x5b
      OPERANDS = 0
      POPS = 3
      PUSHES = 4
      SHORT_DESCRIPTION = "Duplicate the top operand stack value and insert two or three values down"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
