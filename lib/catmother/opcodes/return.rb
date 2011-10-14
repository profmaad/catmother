module CatMother
  module Opcode
    class Return
      MNEMONIC = "return"
      OPCODE = 0xb1
      OPERANDS = 0
      POPS = 0
      PUSHES = nil
      SHORT_DESCRIPTION = "Return void from method"
      DESCRIPTION = ""

      def initialize(io, pc)
      end

      def length
        return 0
      end
    end
  end
end
