module CatMother
  module Opcode
    class Fstore
      MNEMONIC = "fstore"
      OPCODE = 0x38
      OPERANDS = 1
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store float into local variable"
      DESCRIPTION = ""

      attr_reader :index

      def initialize(io, pc)
	@index = io.readbyte
      end

      def length
        return 1
      end
    end
  end
end
