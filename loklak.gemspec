# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'loklak/version'

Gem::Specification.new do |spec|
  spec.name          = 'loklak'
  spec.version       = Loklak::VERSION
  spec.authors       = ['Seva Zhidkov']
  spec.email         = ['zhidkovseva@gmail.com']
  spec.summary       = '{Ruby wrapper for loklak.org API -
                        distributed tweet search server}'
  spec.description   = '{Ruby wrapper for loklak.org API -
                        distributed tweet search server}'
  spec.homepage      = 'https://github.com/sevazhidkov/ruby-loklak-api'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
