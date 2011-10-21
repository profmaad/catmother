require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lshr
      MNEMONIC = "lshr"
      OPCODE = 0x7b
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Arithmetic shift right long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
