require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Idiv
      MNEMONIC = "idiv"
      OPCODE = 0x6c
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Divide int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
