require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dcmpg
      MNEMONIC = "dcmpg"
      OPCODE = 0x98
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Compare double"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
