require_relative "lib/cms_rails/version"

Gem::Specification.new do |spec|
  spec.name        = "cms_rails"
  spec.version     = CmsRails::VERSION
  spec.authors     = ["Devguptaa"]
  spec.email       = ["guptadevgupta8@gmail.com"]
  spec.homepage    = "https://github.com/Devguptaa/cms_engine"
  spec.summary     = "Summary of CmsRails"
  spec.description = "Description of CmsRails"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://github.com/Devguptaa/cms_engine"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Devguptaa/cms_engine"
  spec.metadata["changelog_uri"] = "https://github.com/Devguptaa/cms_engine"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.2"
end
