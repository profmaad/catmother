require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Aload_2
      MNEMONIC = "aload_2"
      OPCODE = 0x2c
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load reference from array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
