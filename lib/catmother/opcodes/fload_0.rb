require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fload_0
      MNEMONIC = "fload_0"
      OPCODE = 0x22
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load float from local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
