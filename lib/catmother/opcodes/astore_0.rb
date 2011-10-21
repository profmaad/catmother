require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Astore_0
      MNEMONIC = "astore_0"
      OPCODE = 0x4b
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store reference into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
