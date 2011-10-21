require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Athrow
      MNEMONIC = "athrow"
      OPCODE = 0xbf
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Throw exception or error"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
