require 'catmother/binary_helpers'
require 'catmother/attribute_parser'

module CatMother
  class JavaMethod
    class AccessFlag
      PUBLIC    = 0x0001
      FINAL     = 0x0010
      SUPER     = 0x0020
      INTERFACE = 0x0200
      ABSTRACT  = 0x0400
    end

    attr_reader :access_flags, :name, :descriptor, :attributes

    def initialize(io, constants)
      @constants = constants

      @access_flags = BinaryHelpers::read_u2(io)
      @name = BinaryHelpers::read_u2(io)
      @descriptor = BinaryHelpers::read_u2(io)

      @attributes = []
      attributes_count = BinaryHelpers::read_u2(io)
      parser = AttributeParser.new(@constants)
      attributes_count.times do
        @attributes.push(parser.parse(io))
      end
    end

    def has_access_flag(flag)
      return ((@access_flags & flag) > 0)
    end
    def is_public
      return has_access_flag(AccessFlag::PUBLIC)
    end
    def is_final
      return has_access_flag(AccessFlag::FINAL)
    end
    def is_super
      return has_access_flag(AccessFlag::SUPER)
    end
    def is_interface
      return has_access_flag(AccessFlag::INTERFACE)
    end
    def is_abstract
      return has_access_flag(AccessFlag::ABSTRACT)
    end
  end
end
