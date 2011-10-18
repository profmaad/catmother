require 'catmother/opcode_groups/local_variable_index'

module CatMother
  module Opcode
    class Lstore
      MNEMONIC = "lstore"
      OPCODE = 0x37
      OPERANDS = 1
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store long into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::LocalVariableIndex

      def initialize(io, pc)
        parse_operands(io)
      end
    end
  end
end
