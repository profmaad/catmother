require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fneg
      MNEMONIC = "fneg"
      OPCODE = 0x76
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Negate Float"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
