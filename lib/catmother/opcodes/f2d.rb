require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class F2d
      MNEMONIC = "f2d"
      OPCODE = 0x8d
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert float to double"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
