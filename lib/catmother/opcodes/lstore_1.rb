require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Lstore_1
      MNEMONIC = "lstore_1"
      OPCODE = 0x40
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store long into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
