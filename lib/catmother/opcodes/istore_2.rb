require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Istore_2
      MNEMONIC = "istore_2"
      OPCODE = 0x3d
      OPERANDS = 0
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store int into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
