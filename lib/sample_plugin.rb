# frozen_string_literal: true

require "bridgetown"
require "sample_plugin/builder"

# @param config [Bridgetown::Configuration::ConfigurationDSL]
Bridgetown.initializer :sample_plugin do |config|
  # Add code here which will run when a site includes
  # `init :sample_plugin`
  # in its configuration

  # Add default configuration data:
  config.sample_plugin ||= {}
  config.sample_plugin.my_setting ||= 123

  # Register your builder:
  config.builder SamplePlugin::Builder

  # You can optionally supply a source manifest:
  config.source_manifest(
    origin: SamplePlugin,
    components: File.expand_path("../components", __dir__),
    layouts: File.expand_path("../layouts", __dir__),
    content: File.expand_path("../content", __dir__)
  )
end
