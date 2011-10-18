require 'catmother/binary_helpers'

module CatMother
  module Opcode
    class Lookupswitch
      MNEMONIC = "lookupswitch"
      OPCODE = 0xab
      OPERANDS = 8
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Access jump table by key match and jump"
      DESCRIPTION = ""

      attr_reader :default
      attr_reader :npairs
      attr_reader :pairs

      def initialize(io, pc)
        @length = 8

        (4-((pc%4)+1)).times do
          io.readbyte
          @length += 1
        end
        
        @default = BinaryHelpers::read_s4(io)

        @npairs = BinaryHelpers::read_s4(io)
        
        return unless @npairs >= 0

        @pairs = {}
        @npairs.times do
          match = BinaryHelpers::read_s4(io)
          offset = BinaryHelpers::read_s4(io)
          @pairs[match] = offset
        end
        @length += @npairs*8
      end

      def length
        return @length
      end
      
      def operands_to_s
        result = "#{@default}, {"
        @pairs.each do |match,offset|
          result += "#{match} => #{offset}, "
        end
        result = result[0..-3]
        result += "}"

        return result
      end
      def operands_to_h
        return {:default => @default, :pairs => @pairs}
      end
    end
  end
end
