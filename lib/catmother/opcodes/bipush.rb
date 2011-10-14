module CatMother
  module Opcode
    class Bipush
      MNEMONIC = "bipush"
      OPCODE = 0x10
      OPERANDS = 1
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Push byte"
      DESCRIPTION = ""
      
      attr_reader :byte
      
      def initialize(io, pc)
	@byte = io.readbyte
      end

      def length
        return 1
      end
    end
  end
end
