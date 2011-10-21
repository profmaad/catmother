require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dup_x1
      MNEMONIC = "dup_x1"
      OPCODE = 0x5a
      OPERANDS = 0
      POPS = 2
      PUSHES = 3
      SHORT_DESCRIPTION = "Duplicate the top operand stack value and insert two values down"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
