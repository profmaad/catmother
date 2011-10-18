require 'catmother/opcode_groups/local_variable_index'

module CatMother
  module Opcode
    class Astore
      MNEMONIC = "astore"
      OPCODE = 0x3a
      OPERANDS = 1
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Store reference into local variable"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::LocalVariableIndex

      def initialize(io, pc)
        parse_operands(io)
      end
    end
  end
end
