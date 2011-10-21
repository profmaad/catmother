require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lshl
      MNEMONIC = "lshl"
      OPCODE = 0x79
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Shift left long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
