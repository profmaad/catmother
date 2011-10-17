require 'catmother/binary_helpers'
require 'catmother/attribute_parser'

module CatMother
  class JavaField
    class AccessFlag
      PUBLIC       = 0x0001
      PRIVATE      = 0x0002
      PROTECTED    = 0x0004
      STATIC       = 0x0008
      FINAL        = 0x0010
      VOLATILE     = 0x0040
      TRANSIENT    = 0x0080
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

    def has_access_flag?(flag)
      return ((@access_flags & flag) > 0)
    end
    def is_public?
      return has_access_flag?(AccessFlag::PUBLIC)
    end
    def is_private?
      return has_access_flag?(AccessFlag::PRIVATE)
    end
    def is_protected?
      return has_access_flag?(AccessFlag::PROTECTED)
    end
    def is_static?
      return has_access_flag?(AccessFlag::STATIC)
    end
    def is_final?
      return has_access_flag?(AccessFlag::FINAL)
    end
    def is_volatile?
      return has_access_flag?(AccessFlag::VOLATILE)
    end
    def is_transient?
      return has_access_flag?(AccessFlag::TRANSIENT)
    end
  end
end
