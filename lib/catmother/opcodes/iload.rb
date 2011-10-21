require 'catmother/opcode_groups/local_variable_index'

module CatMother
  module Opcode
    class Iload
      MNEMONIC = "iload"
      OPCODE = 0x15
      OPERANDS = 1
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load int from local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::LocalVariableIndex

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
