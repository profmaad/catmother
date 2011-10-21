require 'catmother/binary_helpers'
require 'catmother/opcode_groups/constantpool_index'

module CatMother
  module Opcode
    class Ldc_w
      MNEMONIC = "ldc_w"
      OPCODE = 0x13
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push item from runtime constant pool (wide index)"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::ConstantpoolIndex

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
