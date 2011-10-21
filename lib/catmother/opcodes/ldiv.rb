require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Ldiv
      MNEMONIC = "ldiv"
      OPCODE = 0x6d
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Divide long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
