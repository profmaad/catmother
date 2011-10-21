require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Iaload
      MNEMONIC = "iaload"
      OPCODE = 0x2e
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load int from array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
