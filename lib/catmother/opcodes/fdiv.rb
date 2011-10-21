require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fdiv
      MNEMONIC = "fdiv"
      OPCODE = 0x6e
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Divide float"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
