require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Saload
      MNEMONIC = "saload"
      OPCODE = 0x35
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Load short from array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
