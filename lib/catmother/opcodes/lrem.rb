require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lrem
      MNEMONIC = "lrem"
      OPCODE = 0x71
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Remainder long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
