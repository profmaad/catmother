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

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
