require 'catmother/binary_helpers'
require 'catmother/opcode_groups/branch'

module CatMother
  module Opcode
    class Jsr
      MNEMONIC = "jsr"
      OPCODE = 0xa8
      OPERANDS = 2
      POPS = 0
      PUSHES = 1
      SHORT_DESCRIPTION = "Jump subroutine"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::Branch
      
      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
