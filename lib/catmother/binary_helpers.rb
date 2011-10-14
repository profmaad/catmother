module CatMother
  class BinaryHelpers
    def self.read_u1(io)
      return io.read(1).unpack("C")[0]
    end

    def self.read_u2(io)
      return io.read(2).unpack("n")[0]
    end

    def self.read_u4(io)
      return io.read(4).unpack("N")[0]
    end

    def self.read_float(io)
      return io.read(4).unpack("g")[0]
    end

    def self.read_double(io)
      return io.read(8).unpack("G")[0]
    end

    def self.read_s2(io)
      unsigned_to_signed2(read_u2(io))
    end
    def self.read_s4(io)
      unsigned_to_signed4(read_u4(io))
    end

    def self.unsigned_to_signed2(i)
      if i & 0x8000 == 0x8000
        return (i - 0x1_0000)
      else
        return i
      end
    end
    def self.unsigned_to_signed4(i)
      if i & 0x8000_0000 == 0x8000_0000
        return (i - 0x1_0000_0000)
      else
        return i
      end
    end
  end
end
