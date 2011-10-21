require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Ior
      MNEMONIC = "ior"
      OPCODE = 0x80
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Boolean OR int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
