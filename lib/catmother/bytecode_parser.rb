module CatMother
  class BytecodeParser
    def initialize
      @opcodes = []

      CatMother::Opcode::constants.reject { |c| !(CatMother::Opcode.const_get(c).class == Class) }.map { |c| CatMother::Opcode.const_get(c) }.each do |c|
        @opcodes[c::OPCODE] = c
      end
    end

    def parse(io)
      disassembly = []

      while not io.eof?
        opcode = io.read(1)
        disassembly.push(@opcodes[opcode].new(io))
      end

      return disassembly
    end
  end
end
