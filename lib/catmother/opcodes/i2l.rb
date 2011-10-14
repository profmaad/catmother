module CatMother
  module Opcode
    class I2l
      MNEMONIC = "i2l"
      OPCODE = 0x85
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert int to long"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
