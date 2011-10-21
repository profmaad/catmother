require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Areturn
      MNEMONIC = "areturn"
      OPCODE = 0xb0
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return reference from method"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
