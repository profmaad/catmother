require 'catmother/binary_helpers'

module CatMother
  module OpcodeGroup
    module NoOperands
      def parse_operands(io, pc)
      end

      def operands_length
        return 0
      end

      def operands_to_s
        return ""
      end
      def operands_to_h
        return {}
      end
    end
  end
end
