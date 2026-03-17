module SamplePlugin
  class PluginComponent < Bridgetown::Component
    def initialize(hi:)
      @hi = hi
    end

    # You can write a template using Streamlined syntax, or add a
    # sidecar ERB or Serbea file. Docs available here:
    # https://www.bridgetownrb.com/docs/template-engines/erb-and-beyond
    def template
      html -> { <<~HTML
        Well hello there #{text -> { hi }}!
      HTML
      }
    end
  end
end
