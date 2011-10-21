require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Arraylength
      MNEMONIC = "arraylength"
      OPCODE = 0xbe
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Get length of array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
