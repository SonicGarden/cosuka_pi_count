require_relative 'lib/cosuka_pi_count/version'

Gem::Specification.new do |spec|
  spec.name          = "cosuka_pi_count"
  spec.version       = CosukaPiCount::VERSION
  spec.authors       = ["interu"]
  spec.email         = ["interu@sonicgarden.jp"]

  spec.summary       = %q{SG Tools}
  spec.description   = %q{For Pmark}
  spec.homepage      = "https://github.com/SonicGarden/cosuka_pi_count"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.add_runtime_dependency 'faraday', '>=0.9.2'
  spec.add_dependency 'rake', '>= 12.2.0'

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
