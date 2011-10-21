require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Dastore
      MNEMONIC = "dastore"
      OPCODE = 0x52
      OPERANDS = 0
      POPS = 3
      PUSHES = 0
      SHORT_DESCRIPTION = "Store into double array"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
