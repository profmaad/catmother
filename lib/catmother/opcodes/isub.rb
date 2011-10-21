require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Isub
      MNEMONIC = "isub"
      OPCODE = 0x64
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Subtract int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
