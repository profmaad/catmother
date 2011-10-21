require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Drem
      MNEMONIC = "drem"
      OPCODE = 0x73
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Remainder double"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
