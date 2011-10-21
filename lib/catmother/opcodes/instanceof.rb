require 'catmother/binary_helpers'
require 'catmother/opcode_groups/constantpool_index'

module CatMother
  module Opcode
    class Instanceof
      MNEMONIC = "instanceof"
      OPCODE = 0xc1
      OPERANDS = 2
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Determine if object is of given type"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::ConstantpoolIndex

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
