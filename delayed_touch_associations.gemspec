# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'delayed_touch_associations/version'

Gem::Specification.new do |spec|
  spec.name          = "delayed_touch_associations"
  spec.version       = DelayedTouchAssociations::VERSION
  spec.authors       = ["Ionatan Wiznia"]
  spec.email         = ["iwiznia@hotmail.com"]
  spec.description   = %q{Delayed Job integration for the touch option of ActiveRecord belongs_to association}
  spec.summary       = %q{Delays to delayed_job all the calls for touch made by the touch option}
  spec.homepage      = "https://github.com/iwiznia/delayed_touch_associations"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency 'activesupport','~> 3.0'
  spec.add_dependency 'activerecord','~> 3.0'
  spec.add_dependency 'delayed_job','~> 3.0'
end
