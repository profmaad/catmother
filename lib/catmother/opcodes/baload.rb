require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Baload
      MNEMONIC = "baload"
      OPCODE = 0x33
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load byte or boolean from array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
