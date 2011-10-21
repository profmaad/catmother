require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lcmp
      MNEMONIC = "lcmp"
      OPCODE = 0x94
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Compare long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
