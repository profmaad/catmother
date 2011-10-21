require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fmul
      MNEMONIC = "fmul"
      OPCODE = 0x6a
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Multiply float"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
