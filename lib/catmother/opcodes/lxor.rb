require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lxor
      MNEMONIC = "lxor"
      OPCODE = 0x83
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean XOR long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
