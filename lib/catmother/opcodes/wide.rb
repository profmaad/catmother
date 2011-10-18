require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Wide
      MNEMONIC = "wide"
      OPCODE = 0xc4
      OPERANDS = 3
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Extend local variable index by additional bytes"
      DESCRIPTION = ""

      attr_reader :opcode, :index
      attr_reader :increment

      def initialize(io, pc)
	@opcode = io.readbyte
	@index = BinaryHelpers::read_u2(io)

	if @opcode == 0x84 # iinc
          @increment = BinaryHelpers::read_s2(io)
	end
      end

      def length
        return 3
      end

      def operands_to_s
        result = "#{@opcode}, #{@index}"
        if not @increment.nil? and (@increment < 0)
          result += ", #{@increment}"
        elsif @increment.nil?
          result += ", +#{@increment}"
        end

        return result
      end
      def operands_to_h
        return {:opcode => @opcode, :index => @index, :increment => @increment}
      end
    end
  end
end
