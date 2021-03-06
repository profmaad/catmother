require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Tableswitch
      MNEMONIC = "tableswitch"
      OPCODE = 0xaa
      OPERANDS = 12
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Access jump table by index and jump"
      DESCRIPTION = ""

      attr_reader :default, :low, :high, :jump_offsets

      def initialize(io, pc)
        parse_operands(io, pc)
      end
      
      def parse_operands(io, pc)
        @length = 12

        (4-((pc%4)+1)).times do
          io.readbyte
          @length += 1
        end
        
        @default = BinaryHelpers::read_s4(io)
        @low = BinaryHelpers::read_s4(io)
        @high = BinaryHelpers::read_s4(io)

        @jump_offsets = []
        (@high-@low+1).times do
          @jump_offsets.push(BinaryHelpers::read_s4(io))
        end
        @length += ((@high-@low+1)*4)
      end

      def operands_length
        return @length
      end

      def operands_to_s
        result = "#{@default}, #{@low}, #{@high}, ["
        @jump_offsets.each do |offset|
          result += "#{offset}, "
        end
        result = result[0..-3]
        result += "]"

        return result
      end
      def operands_to_h
        return {:default => @default, :low => @low, :high => @high, :jump_offsets => @jump_offsets}
      end
    end
  end
end
