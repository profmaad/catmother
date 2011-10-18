require 'catmother/opcode_groups/local_variable_index'

module CatMother
  module Opcode
    class Aload
      MNEMONIC = "aload"
      OPCODE = 0x19
      OPERANDS = 1
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load reference from local variable"
      DESCRIPTION = ""
      
      include CatMother::OpcodeGroup::LocalVariableIndex

      def initialize(io, pc)
        parse_operands(io)
      end
    end
  end
end
