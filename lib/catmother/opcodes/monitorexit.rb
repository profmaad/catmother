require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Monitorexit
      MNEMONIC = "monitorexit"
      OPCODE = 0xc3
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Exit monitor for object"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
