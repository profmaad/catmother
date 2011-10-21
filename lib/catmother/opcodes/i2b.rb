require 'catmother/opcode_groups/no_operands'

module CatMother
  module Opcode
    class I2b
      MNEMONIC = "i2b"
      OPCODE = 0x91
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert int to byte"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::NoOperands

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
