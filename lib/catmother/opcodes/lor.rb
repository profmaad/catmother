require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lor
      MNEMONIC = "lor"
      OPCODE = 0x81
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean OR long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
