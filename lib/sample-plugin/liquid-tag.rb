# frozen_string_literal: true

module SamplePlugin
  class LiquidTag < Liquid::Tag
    def render(context)
      @context = context

      "This plugin works!"
    end
  end
end
