require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dstore_3
      MNEMONIC = "dstore_3"
      OPCODE = 0x4a
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store double into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
