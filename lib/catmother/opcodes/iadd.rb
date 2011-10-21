require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Iadd
      MNEMONIC = "iadd"
      OPCODE = 0x60
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Add int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
