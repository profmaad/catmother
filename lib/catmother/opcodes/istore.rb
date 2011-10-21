require 'catmother/opcode_groups/local_variable_index'

module CatMother
  module Opcode
    class Istore
      MNEMONIC = "istore"
      OPCODE = 0x36
      OPERANDS = 1
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store int into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::LocalVariableIndex

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
