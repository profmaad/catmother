require 'catmother/binary_helpers'
require 'catmother/opcode_groups/constantpool_index'

module CatMother
  module Opcode
    class Getfield
      MNEMONIC = "getfield"
      OPCODE = 0xb4
      OPERANDS = 2
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Fetch field from object"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::ConstantpoolIndex

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
