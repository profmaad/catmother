require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class D2f
      MNEMONIC = "d2f"
      OPCODE = 0x90
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert double to float"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
