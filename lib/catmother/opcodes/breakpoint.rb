require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Breakpoint
      MNEMONIC = "breakpoint"
      OPCODE = 0xca
      OPERANDS = 0
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Breakpoint"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
