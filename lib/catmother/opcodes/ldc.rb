require 'catmother/opcode_groups/constantpool_index_short'

module CatMother
  module Opcode
    class Ldc
      MNEMONIC = "ldc"
      OPCODE = 0x12
      OPERANDS = 1
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push item from runtime constant pool"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::ConstantpoolIndexShort

      def initialize(io, pc)
        parse_operands(io)
      end
    end
  end
end
