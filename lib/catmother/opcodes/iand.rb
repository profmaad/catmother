require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Iand
      MNEMONIC = "iand"
      OPCODE = 0x7e
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean AND int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
