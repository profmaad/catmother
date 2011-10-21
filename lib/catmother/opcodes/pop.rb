require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Pop
      MNEMONIC = "pop"
      OPCODE = 0x57
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Pop the top operand stack value"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
