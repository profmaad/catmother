require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Aaload
      MNEMONIC = "aaload"
      OPCODE = 0x32
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load reference from array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
