require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fsub
      MNEMONIC = "fsub"
      OPCODE = 0x66
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Subtract float"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
