require 'catmother/opcode_groups/local_variable_index'

module CatMother
  module Opcode
    class Dstore
      MNEMONIC = "dstore"
      OPCODE = 0x39
      OPERANDS = 1
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store double into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::LocalVariableIndex

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
