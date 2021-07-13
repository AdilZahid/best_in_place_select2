# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'best_in_place/version'

Gem::Specification.new do |spec|
  
  spec.name          = "best_in_place"
  spec.version       = BestInPlace::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["AdilZahid"]
  spec.email         = ["adil3267@gmail.com"]

  spec.summary       = "This gem is an wrapper to support select2 in best-in-place gem."
  spec.homepage      = "https://github.com/AdilZahid/best_in_place_select2"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = spec.homepage

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {spec}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'actionpack', '>= 3.2'
  spec.add_runtime_dependency 'railties', '>= 3.2'

end
