require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Aastore
      MNEMONIC = "aastore"
      OPCODE = 0x53
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into reference array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
