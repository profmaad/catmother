require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Ladd
      MNEMONIC = "ladd"
      OPCODE = 0x61
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Add long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
