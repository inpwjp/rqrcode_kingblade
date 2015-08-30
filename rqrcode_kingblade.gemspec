# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rqrcode_kingblade/version'

Gem::Specification.new do |spec|
  spec.name          = "rqrcode_kingblade"
  spec.version       = RqrcodeKingblade::VERSION
  spec.authors       = ["inpwjp"]
  spec.email         = ["inpw@mua.biglobe.ne.jp"]

  spec.summary       = %q{make qrcode for the kingblade III.}
  spec.description   = %q{make qrcode for the kingblade III.}
  spec.homepage      = "https://github.com/inpwjp/rqrcode_kingblade"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_dependency 'rqrcode_png'

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
