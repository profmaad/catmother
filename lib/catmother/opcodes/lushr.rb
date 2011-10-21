require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lushr
      MNEMONIC = "lushr"
      OPCODE = 0x7d
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Logical shift right long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
