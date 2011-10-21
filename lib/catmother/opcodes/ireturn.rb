require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class Ireturn
      MNEMONIC = "ireturn"
      OPCODE = 0xac
      OPERANDS = 0
      POPS = 1
      PUSHES = nil
      SHORT_DESCRIPTION = "Return int from method"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
      end
    end
  end
end
