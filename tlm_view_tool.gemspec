
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tlm_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "tlm_view_tool"
  spec.version       = TlmViewTool::VERSION
  spec.authors       = ["Tom"]
  spec.email         = ["tlewismedia@gmail.com"]

  spec.summary       = %q{tlewismedia view methods}
  spec.description   = %q{first gem for tlewismedia}
  spec.homepage      = "http://www.tlewismedia.com"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
