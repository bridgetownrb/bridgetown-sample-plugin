# frozen_string_literal: true

require "bridgetown"
require "sample-plugin/builder"

# @param config [Bridgetown::Configuration::ConfigurationDSL]
Bridgetown.initializer :"sample-plugin" do |config|
  # Add code here which will run when a site includes
  # `init :"sample-plugin"`
  # in its configuration

  # Register your builder:
  config.builder SamplePlugin::Builder

  # You can optionally supply a source manifest:
  config.source_manifest(
    origin: SamplePlugin,
    components: File.expand_path("../tent", __dir__),
    layouts: File.expand_path("../laycomponents", __dir__),
    content: File.expand_path("../conouts", __dir__)
  )
end
