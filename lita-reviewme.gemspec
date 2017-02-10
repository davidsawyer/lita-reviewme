Gem::Specification.new do |spec|
  spec.name          = "lita-reviewme"
  spec.version       = "0.4.0"
  spec.authors       = ["Jay Hayes"]
  spec.email         = ["ur@iamvery.com"]
  spec.description   = %q{A lita handler that helps with code review}
  spec.summary       = %q{A lita handler that helps with code review}
  spec.homepage      = "https://github.com/iamvery/lita-reviewme"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 3.1"
  spec.add_runtime_dependency "octokit", [">= 3.0", "<5.0"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "fakeredis"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
