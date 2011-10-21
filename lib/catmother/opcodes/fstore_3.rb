require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fstore_3
      MNEMONIC = "fstore_3"
      OPCODE = 0x46
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store float into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
