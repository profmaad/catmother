require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dneg
      MNEMONIC = "dneg"
      OPCODE = 0x77
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Negate double"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
