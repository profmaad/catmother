require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Castore
      MNEMONIC = "castore"
      OPCODE = 0x55
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into char array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
