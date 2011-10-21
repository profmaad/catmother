require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Aconst_null
      MNEMONIC = "aconst_null"
      OPCODE = 0x01
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push null"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
