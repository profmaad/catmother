require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lastore
      MNEMONIC = "lastore"
      OPCODE = 0x50
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into long array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
