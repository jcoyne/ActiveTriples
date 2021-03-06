require 'coveralls'
Coveralls.wear!

require 'bundler/setup'
Bundler.setup

require 'rdf/spec'
require 'active_triples'

require 'pry' unless ENV["CI"]

Dir['./spec/support/**/*.rb'].each { |f| require f }

RSpec.configure do |config|
  config.color = true
  config.tty = true

  config.include(RDF::Spec::Matchers)

  # Uncomment the following line to get errors and backtrace for deprecation warnings
  # config.raise_errors_for_deprecations!

  # Use the specified formatter
  config.formatter = :progress
end
