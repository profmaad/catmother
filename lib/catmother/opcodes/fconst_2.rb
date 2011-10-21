require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fconst_2
      MNEMONIC = "fconst_2"
      OPCODE = 0x0d
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push float"
      DESCRIPTION = "Push the float constant 2.0 onto the operand stack."

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
