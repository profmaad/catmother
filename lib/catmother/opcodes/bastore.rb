require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Bastore
      MNEMONIC = "bastore"
      OPCODE = 0x54
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into byte or boolean array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
