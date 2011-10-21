require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dstore_1
      MNEMONIC = "dstore_1"
      OPCODE = 0x48
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store double into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
