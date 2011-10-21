require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lmul
      MNEMONIC = "lmul"
      OPCODE = 0x69
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Multiply long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
