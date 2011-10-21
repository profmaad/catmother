require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lload_2
      MNEMONIC = "lload_2"
      OPCODE = 0x20
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load long from local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
