
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rumors/api/client/version"

Gem::Specification.new do |spec|
  spec.name          = "rumors-api-client"
  spec.version       = Rumors::Api::Client::VERSION
  spec.authors       = ["Carol H"]
  spec.email         = ["sheseee@gmail.com"]

  spec.summary       = %q(a api client to "https://cofacts.g0v.tw/")
  spec.description   = %q(check line rumors, base on database of `cofacts` (g0v project))
  spec.homepage      = "https://github.com/carolhsu/rumors-api-client"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w(lib)

  spec.add_dependency "httparty", "~> 0.16"
  spec.add_dependency "tf-idf-similarity", "~> 0.1"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "vcr", "~> 4.0"
  spec.add_development_dependency "webmock", "~> 3.4"
  spec.add_development_dependency "pry", "~> 0.12"
end
