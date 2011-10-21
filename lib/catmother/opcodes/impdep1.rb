require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Impdep1
      MNEMONIC = "impdep1"
      OPCODE = 0xfe
      OPERANDS = 0
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Reserved Opcode"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
