require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fload_2
      MNEMONIC = "fload_2"
      OPCODE = 0x24
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load float form local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
