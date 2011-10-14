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

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
