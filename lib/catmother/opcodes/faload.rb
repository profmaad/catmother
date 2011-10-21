require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Faload
      MNEMONIC = "faload"
      OPCODE = 0x30
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load float from array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
