module CatMother
  class BytecodeParser
    def initialize
      @opcodes = []

      CatMother::Opcode::constants.reject { |c| !(CatMother::Opcode.const_get(c).class == Class) }.map { |c| CatMother::Opcode.const_get(c) }.each do |c|
        @opcodes[c::OPCODE] = c
      end
    end

    def parse(io, length)
      disassembly = {}

      pc = 0
      while pc < length
        opcode = io.readbyte
        
        opcode_parser = @opcodes[opcode]        
        unless opcode_parser.nil?
          result = opcode_parser.new(io, pc)
          disassembly[pc] = result
          if result.respond_to? :operands_length
            pc += (1+result.operands_length)
          else
            pc += (1+result.length)
          end
        else
          puts "unknown opcode: #{opcode}"
          return nil
        end
      end

      return disassembly
    end
  end
end
