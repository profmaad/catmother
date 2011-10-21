require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Iload_0
      MNEMONIC = "iload_0"
      OPCODE = 0x1a
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load int from local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
