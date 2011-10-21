require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Istore_3
      MNEMONIC = "istore_3"
      OPCODE = 0x3e
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
