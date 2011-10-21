require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Monitorenter
      MNEMONIC = "monitorenter"
      OPCODE = 0xc2
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Enter monitor for object"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
