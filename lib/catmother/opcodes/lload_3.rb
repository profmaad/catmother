require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lload_3
      MNEMONIC = "lload_3"
      OPCODE = 0x21
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
