require 'rake'

Gem::Specification.new do |s|
  s.name = "catmother"
  s.version = "0.2"
  s.summary = "a pathetic try at a java .class file disassembler"
  s.author = "Prof. MAAD aka Max Wolter"
  s.homepage = "https://github.com/profmaad/catmother"
  s.license = "BSD"

  s.files = FileList["lib/**/*.rb", "lib/catmother.rb" "bin/*", "README.md", "LICENSE"]
  s.executables << "catmother" << "catmother-disassembler" << "catmother-bytecodeexporter" << "catmother-disassembler-raw"
end
