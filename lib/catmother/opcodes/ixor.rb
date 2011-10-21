require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Ixor
      MNEMONIC = "ixor"
      OPCODE = 0x82
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean XOR int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
