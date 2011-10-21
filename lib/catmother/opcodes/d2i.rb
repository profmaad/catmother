require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class D2i
      MNEMONIC = "d2i"
      OPCODE = 0x8e
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert double to int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
