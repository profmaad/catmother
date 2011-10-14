$:.unshift File.dirname(__FILE__)

require 'catmother/invalid_classfile_error.rb'

require 'catmother/java_class.rb'
require 'catmother/bytecode_parser.rb'
require 'catmother/attribute_parser.rb'

Dir[File.dirname(__FILE__) + "/catmother/attributes/*.rb"].each do |file|
  require file
end
Dir[File.dirname(__FILE__) + "/catmother/opcodes/*.rb"].each do |file|
  require file
end
