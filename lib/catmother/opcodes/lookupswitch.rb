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

      attr_reader :defaultbyte1, :defaultbyte2, :defaultbyte3, :defaultbyte4
      attr_reader :npairs1, :npairs2, :npairs3, :npairs4
      attr_reader :pairs

      def initialize(io, pc)
        @length = 8

        (4-((pc%4)+1)).times do
          io.readbyte
          @length += 1
        end
        
        @defaultbyte = io.read(4)
        @defaultbyte1 = @defaultbyte[0]
        @defaultbyte2 = @defaultbyte[1]
        @defaultbyte3 = @defaultbyte[2]
        @defaultbyte4 = @defaultbyte[3]
        @defaultbyte = BinaryHelpers::unsigned_to_signed(@defaultbyte.unpack('N')[0])

        @npairs = io.read(4)
        @npairs1 = @npairs[0]
        @npairs2 = @npairs[1]
        @npairs3 = @npairs[2]
        @npairs4 = @npairs[3]
        @npairs = BinaryHelpers::unsigned_to_signed(@npairs.unpack('N')[0])
        
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
    end
  end
end
