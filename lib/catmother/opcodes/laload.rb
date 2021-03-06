require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Laload
      MNEMONIC = "laload"
      OPCODE = 0x2f
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load long from array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
