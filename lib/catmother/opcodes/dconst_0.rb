require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dconst_0
      MNEMONIC = "dconst_0"
      OPCODE = 0x0e
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push double"
      DESCRIPTION = "Push the double constant 0.0 onto the operand stack."

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
