lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "teber/version"

Gem::Specification.new do |spec|
  spec.name          = "teber-library"
  spec.version       = Teber::VERSION
  spec.authors       = ["Naresh Sekar"]
  spec.email         = ["nareshnavinash@gmail.com"]

  spec.summary       = %q{Common methods for web driver and locator methods in UI automation}
  spec.description   = %q{To have all the common methods that are used for UI automation, this enables us to share the methods across teams}
  spec.homepage      = "https://nareshnavinash.wixsite.com/teber"
  spec.license       = "GPL-3.0"
  spec.executables   << 'teber'

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nareshnavinash/Teber-Gem"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency 'selenium-webdriver', '3.142.6'
  spec.add_runtime_dependency 'cucumber', '~> 3.1', '>= 3.1.2'
  spec.add_runtime_dependency 'allure-cucumber', '~> 0.6.1'
  spec.add_runtime_dependency 'rspec', '3.7.0'
  spec.add_runtime_dependency 'parallel_tests', '2.21.0'
  spec.add_runtime_dependency 'parseconfig', '1.0.8'
  spec.add_runtime_dependency 'require_all', '~> 1.4', '>= 1.4.0'
  spec.add_runtime_dependency 'os', '~> 0.9.6'
  spec.add_runtime_dependency 'pry', '~> 0.10.4'
  spec.add_runtime_dependency 'yaml_extend', '~> 0.2.0'
  spec.add_runtime_dependency 'webdriver_manager', '~> 0.6.0'
end
