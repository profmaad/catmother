require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Impdep2
      MNEMONIC = "impdep2"
      OPCODE = 0xff
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
