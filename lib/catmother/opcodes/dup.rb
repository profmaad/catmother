require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dup
      MNEMONIC = "dup"
      OPCODE = 0x59
      OPERANDS = 0
      POPS = 1
      PUSHES = 2
      SHORT_DESCRIPTION = "Duplicate the top operand stack value"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
