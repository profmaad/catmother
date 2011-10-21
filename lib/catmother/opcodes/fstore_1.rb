require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Fstore_1
      MNEMONIC = "fstore_1"
      OPCODE = 0x44
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store float into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
