require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dload_0
      MNEMONIC = "dload_0"
      OPCODE = 0x26
      OPERANDS = 0
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load double from local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
