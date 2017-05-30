# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'catpix_mini/version'

Gem::Specification.new do |spec|
  spec.name          = "catpix_mini"
  spec.version       = CatpixMini::VERSION
  spec.authors       = ["Radek Pazdera", "Huy Dinh"]
  spec.email         = ["me@radek.io", "phradion@gmail.com"]
  spec.summary       = %q{Cat images into the terminal. A port to work with MiniMagick}
  spec.description   = %q{Print images (png, jpg, gif and many others) in the
                          command line with ease. Using rmagick and tco in the
                          background to read the images and convert them into
                          the extended 256 colour palette for terminals.
                          This gem is ported from original catpix gem to be
                          compatible with MiniMagick instead of RMagick. It will
                          also be faster when rendering large images.}
  spec.homepage      = "https://github.com/phradion/catpix_mini_HD"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 1.9"

  spec.add_runtime_dependency "tco", "~> 0.1", ">= 0.1.8"
  spec.add_runtime_dependency "mini_magick", "~> 4.7.0", ">= 4.7.0"
  spec.add_dependency "docopt", "~> 0.5", ">= 0.5.0"
  spec.add_dependency "ruby-terminfo", "~> 0.1", ">= 0.1.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.4"
end
