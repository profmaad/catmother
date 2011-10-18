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
      
      attr_reader :value
      
      def initialize(io, pc)
	@value = io.readbyte
      end

      def length
        return 1
      end

      def operands_to_s
        return @value
      end
      def operands_to_h
        return  {:value => @value}
      end
    end
  end
end
