require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fadd
      MNEMONIC = "fadd"
      OPCODE = 0x62
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Add float"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
