require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dup2_x1
      MNEMONIC = "dup2_x1"
      OPCODE = 0x5d
      OPERANDS = 0
      POPS = 3
      PUSHES = 5
      SHORT_DESCRIPTION = "Duplicate the top one or two operand stack values and insert two or three values down"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
