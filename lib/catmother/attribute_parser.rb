module CatMother
  class AttributeParser
    def initialize(constants)
      @constants = constants
      @attributes = {}

      CatMother::Attribute::constants.reject { |c| !(CatMother::Attribute.const_get(c).class == Class) }.map { |c| CatMother::Attribute.const_get(c) }.each do |c|
        @attributes[c::IDENTIFIER] = c
      end
    end

    def parse(io)
      name_index = BinaryHelpers::read_u2(io)
      length = BinaryHelpers::read_u4(io)

      name = @constants[name_index][:value]
      attribute_class = @attributes[name]
      if attribute_class.nil?
        return {:name => name, :value => io.read(length)}
      else
        return {:name => name, :value => attribute_class.new(io, length, @constants)}
      end
    end
  end
end
