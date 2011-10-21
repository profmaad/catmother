require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dup2
      MNEMONIC = "dup2"
      OPCODE = 0x5c
      OPERANDS = 0
      POPS = 2
      PUSHES = 4
      SHORT_DESCRIPTION = "Duplicate the top one or two operand stack values"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
