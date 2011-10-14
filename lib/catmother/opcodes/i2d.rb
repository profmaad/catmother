module CatMother
  module Opcode
    class I2d
      MNEMONIC = "i2d"
      OPCODE = 0x87
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert int to double"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
