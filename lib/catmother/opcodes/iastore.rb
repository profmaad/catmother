require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Iastore
      MNEMONIC = "iastore"
      OPCODE = 0x4f
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into int array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
