require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class F2l
      MNEMONIC = "f2l"
      OPCODE = 0x8c
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert float to long"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
