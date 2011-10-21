require 'catmother/binary_helpers'
require 'catmother/opcode_groups/constantpool_index'

module CatMother
  module Opcode
    class Invokespecial
      MNEMONIC = "invokespecial"
      OPCODE = 0xb7
      OPERANDS = 2
      POPS = 1
      PUSHES = 0
      SHORT_DESCRIPTION = "Invoke instance method; special handling for superclass, private, and instance initialization method invocations"
      DESCRIPTION = ""

      include CatMother::OpcodeGroup::ConstantpoolIndex

      def initialize(io, pc)
        parse_operands(io, pc)
      end
    end
  end
end
