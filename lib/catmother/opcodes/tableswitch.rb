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

      attr_reader :defaultbyte1, :defaultbyte2, :defaultbyte3, :defaultbyte4
      attr_reader :lowbyte1, :lowbyte2, :lowbyte3, :lowbyte4
      attr_reader :highbyte1, :highbyte2, :highbyte3, :highbyte4
      attr_reader :jump_offsets

      def initialize(io, pc)
        @length = 12

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

        @lowbyte = io.read(4)
        @lowbyte1 = @lowbyte[0]
        @lowbyte2 = @lowbyte[1]
        @lowbyte3 = @lowbyte[2]
        @lowbyte4 = @lowbyte[3]
        @lowbyte = BinaryHelpers::unsigned_to_signed(@lowbyte.unpack('N')[0])

        @highbyte = io.read(4)
        @highbyte1 = @highbyte[0]
        @highbyte2 = @highbyte[1]
        @highbyte3 = @highbyte[2]
        @highbyte4 = @highbyte[3]
        @highbyte = BinaryHelpers::unsigned_to_signed(@highbyte.unpack('N')[0])

        @jump_offsets = []
        (@highbyte-@lowbyte+1).times do
          @jump_offsets.push(BinaryHelpers::read_s4(io))
        end
        @length += ((@highbyte-@lowbyte+1)*4)
      end

      def length
        return @length
      end
    end
  end
end
