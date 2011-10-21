require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Irem
      MNEMONIC = "irem"
      OPCODE = 0x70
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Remainder int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
