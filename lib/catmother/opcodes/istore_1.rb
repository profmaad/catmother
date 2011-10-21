require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Istore_1
      MNEMONIC = "istore_1"
      OPCODE = 0x3c
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store int into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
