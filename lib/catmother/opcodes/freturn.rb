require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Freturn
      MNEMONIC = "freturn"
      OPCODE = 0xae
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return float from method"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
