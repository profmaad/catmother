require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Return
      MNEMONIC = "return"
      OPCODE = 0xb1
      OPERANDS = 0
      POPS = 0
      PUSHES = nil
      SHORT_DESCRIPTION = "Return void from method"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
