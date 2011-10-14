module CatMother
  module Opcode
    class I2f
      MNEMONIC = "i2f"
      OPCODE = 0x86
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert int to float"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
