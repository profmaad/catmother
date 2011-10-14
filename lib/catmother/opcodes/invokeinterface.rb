require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Invokeinterface
      MNEMONIC = "invokeinterface"
      OPCODE = 0xb9
      OPERANDS = 4
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Invoke interface method"
      DESCRIPTION = ""

      attr_reader :index, :count

      def initialize(io, pc)
	@index = BinaryHelpers::read_u2(io)
	@count = io.readbyte
	io.readbyte #0
      end

      def length
        return 4
      end
    end
  end
end
