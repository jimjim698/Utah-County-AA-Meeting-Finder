
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "utah_county_aa_meeting_finder/version"

Gem::Specification.new do |spec|
  spec.name          = "utah_county_aa_meeting_finder"
  spec.version       = UtahCountyAaMeetingFinder::VERSION
  spec.authors       = ["'James Lotruglio'"]
  spec.email         = ["'jimlotruglio@yahoo.com'"]
  spec.summary       = "Find all AA meetings in Utah county."
  spec.description   = "Provides a search engine for all AA meetings in the Utah County area"
  spec.homepage      = "https://www.github.com/jimjim698/utah-county-aa-meeting-finder"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
