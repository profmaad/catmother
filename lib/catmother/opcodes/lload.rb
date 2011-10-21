require 'catmother/opcode_groups/local_variable_index'

module CatMother
  module Opcode
    class Lload
      MNEMONIC = "lload"
      OPCODE = 0x16
      OPERANDS = 1
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Load long from local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::LocalVariableIndex

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
