require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Aload_0
      MNEMONIC = "aload_0"
      OPCODE = 0x2a
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load reference from local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
