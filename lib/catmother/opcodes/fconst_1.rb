require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fconst_1
      MNEMONIC = "fconst_1"
      OPCODE = 0x0c
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push float"
      DESCRIPTION = "Push the float constant 1.0 onto the operand stack."

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
