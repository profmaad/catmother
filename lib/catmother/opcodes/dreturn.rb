require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dreturn
      MNEMONIC = "dreturn"
      OPCODE = 0xaf
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return double from method"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
