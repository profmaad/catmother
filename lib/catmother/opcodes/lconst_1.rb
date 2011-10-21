require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lconst_1
      MNEMONIC = "lconst_1"
      OPCODE = 0x0a
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push long constant (1)"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
