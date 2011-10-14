require 'catmother/binary_helpers'

module CatMother
  module Attribute
    class StackMapTable
      IDENTIFIER = "StackMapTable"

      class EntryType
        SAME = 0..63
        SAME_LOCALS_1_STACK_ITEM = 64..127
        CHOP = 248..250
        SAME_FRAME_EXTENDED = 251
        APPEND = 252..254
        FULL_FRAME = 255
      end
      class VerificationType
        TOP = 0
        INTEGER = 1
        FLOAT = 2
        DOUBLE = 3
        LONG = 4
        NULL = 5
        UNINITIALIZED_THIS = 6
        OBJECT = 7
        UNINITIALIZED = 8
      end

      attr_reader :entries

      def initialize(io, length, constants)
        @entries = []

        parse(io)
      end

      def parse(io)
        entries_count = BinaryHelpers::read_u2(io)

        entries_count.times do
          @entries.push(parse_entry(io))
        end
      end
      def parse_entry(io)
        frame_type = BinaryHelpers::read_u1(io)
        
        frame_value = case frame_type
               when EntryType::SAME
                        nil
               when EntryType::SAME_LOCALS_1_STACK_ITEM
                        {:stack => parse_verification_type_info(io)}
               when EntryType::CHOP
                        {:offset_delta => BinaryHelpers::read_u2(io)}
               when EntryType::SAME_FRAME_EXTENDED
                        {:offset_delta => BinaryHelpers::read_u2(io)}
               when EntryType::APPEND
                        parse_append_frame(io, frame_type)
               when EntryType::FULL_FRAME
                        parse_full_frame(io)
               end

        return {:type => frame_type, :value => frame_value}
      end
      def parse_append_frame(io, frame_type)
        offset_delta = BinaryHelpers::read_u2(io)

        locals = []
        (frame_type-251).times do
          locals.push(parse_verification_type_info(io))
        end

        return {:offset_delta => offset_delta, :locals => locals}
      end
      def parse_full_frame(io)
        offset_delta = BinaryHelpers::read_u2(io)

        locals_count = BinaryHelpers::read_u2(io)
        locals = []
        locals_count.times do
          locals.push(parse_verification_type_info(io))
        end
        
        stack_items_count = BinaryHelpers::read_u2(io)
        stack_items = []
        stack_items_count.times do
          stack_items.push(parse_verification_type_info(io))
        end

        return {:offset_delta => offset_delta, :locals => locals, :stack_items => stack_items}
      end

      def parse_verification_type_info(io)
        tag = BinaryHelpers::read_u1(io)
        
        value = case tag
                when VerificationType::TOP, VerificationType::INTEGER, VerificationType::FLOAT, VerificationType::DOUBLE, VerificationType::LONG, VerificationType::NULL, VerificationType::UNINITIALIZED_THIS
                  nil
                when VerificationType::OBJECT
                  {:index => BinaryHelpers::read_u2(io)}
                when VerificationType::UNINITIALIZED
                  {:offset => BinaryHelpers::read_u2(io)}
                end
        
        return {:tag => tag, :value => value}
      end
    end
  end
end
