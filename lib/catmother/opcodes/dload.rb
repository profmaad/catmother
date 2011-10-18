require 'catmother/opcode_groups/local_variable_index'

module CatMother
  module Opcode
    class Dload
      MNEMONIC = "dload"
      OPCODE = 0x18
      OPERANDS = 1
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load double from local variable"
      DESCRIPTION = ""
      
      include CatMother::OpcodeGroup::LocalVariableIndex

      def initialize(io, pc)
        parse_operands(io)
      end
    end
  end
end
