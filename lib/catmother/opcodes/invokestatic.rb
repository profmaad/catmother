require 'catmother/binary_helpers'
require 'catmother/opcode_groups/constantpool_index'

module CatMother
  module Opcode
    class Invokestatic
      MNEMONIC = "invokestatic"
      OPCODE = 0xb8
      OPERANDS = 2
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Invoke a class (static) method"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::ConstantpoolIndex

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
