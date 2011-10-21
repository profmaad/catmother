require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dstore_2
      MNEMONIC = "dstore_2"
      OPCODE = 0x49
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
