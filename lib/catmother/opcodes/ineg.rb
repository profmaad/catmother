require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Ineg
      MNEMONIC = "ineg"
      OPCODE = 0x74
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Negate int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
