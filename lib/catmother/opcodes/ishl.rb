require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Ishl
      MNEMONIC = "ishl"
      OPCODE = 0x78
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Shift left int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
