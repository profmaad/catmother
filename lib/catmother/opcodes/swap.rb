require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Swap
      MNEMONIC = "swap"
      OPCODE = 0x5f
      OPERANDS = 0
      POPS = 2
      PUSHES = 2
      SHORT_DESCRIPTION = "Swap the top two operand stack values"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
