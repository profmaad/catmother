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
  end
end
