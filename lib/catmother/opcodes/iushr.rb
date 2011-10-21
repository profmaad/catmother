require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Iushr
      MNEMONIC = "iushr"
      OPCODE = 0x7c
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Logical shift right int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
