# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "quad_tile/version"

Gem::Specification.new do |spec|
  spec.name          = "quad_tile"
  spec.version       = QuadTile::VERSION
  spec.authors       = ["Benjamin Reynolds"]
  spec.email         = ["breyno127@gmail.com"]

  spec.summary       = "native implementation of osm quad_tile function"
  spec.homepage      = "https://github.com/rubyforgood/quad_tile"
  spec.license       = "GPLv2"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.extensions    = "ext/quad_tile/extconf.rb"
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake-compiler"
end
