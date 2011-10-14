module CatMother
  module Opcode
    class Aload
      MNEMONIC = "aload"
      OPCODE = 0x19
      OPERANDS = 1
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load reference from local variable"
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
