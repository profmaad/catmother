module CatMother
  module Opcode
    class Invokespecial
      MNEMONIC = "invokespecial"
      OPCODE = 0xb7
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Invoke instance method; special handling for superclass, private, and instance initialization method invocations"
      DESCRIPTION = ""

      attr_reader :indexbyte1, :indexbyte2

      def initialize(io, pc)
	@indexbyte1 = io.readbyte
	@indexbyte2 = io.readbyte
      end

      def length
        return 2
      end
    end
  end
end
