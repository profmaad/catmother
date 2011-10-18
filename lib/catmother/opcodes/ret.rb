require 'catmother/opcode_groups/local_variable_index'

module CatMother
  module Opcode
    class Ret
      MNEMONIC = "ret"
      OPCODE = 0xa9
      OPERANDS = 1
      POPS = 0
      PUSHES = 0
      SHORT_DESCRIPTION = "Return from subroutine"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::LocalVariableIndex

      def initialize(io, pc)
        parse_operands(io)
      end
    end
  end
end
