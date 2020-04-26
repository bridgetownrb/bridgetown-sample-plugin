# frozen_string_literal: true

require "bridgetown"

module SamplePlugin
  autoload :LiquidTag, "sample-plugin/liquid-tag"
end

Liquid::Template.register_tag "sample_plugin", SamplePlugin::LiquidTag
