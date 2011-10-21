require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Ishr
      MNEMONIC = "ishr"
      OPCODE = 0x7a
      OPERANDS = 0
      POPS = 2
      PUSHES = 1
      SHORT_DESCRIPTION = "Arithmetic shift right int"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
