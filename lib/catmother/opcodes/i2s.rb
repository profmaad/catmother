module CatMother
  module Opcode
    class I2s
      MNEMONIC = "i2s"
      OPCODE = 0x93
      OPERANDS = 0
      POPS = 1
      PUSHES = 1
      SHORT_DESCRIPTION = "Convert int to short"
      DESCRIPTION = ""

      def initialize(io)
      end
    end
  end
end
