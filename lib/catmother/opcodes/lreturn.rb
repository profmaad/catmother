require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lreturn
      MNEMONIC = "lreturn"
      OPCODE = 0xad
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return long from method"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
