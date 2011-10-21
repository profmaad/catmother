require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class I2c
      MNEMONIC = "i2c"
      OPCODE = 0x92
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert int to char"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
