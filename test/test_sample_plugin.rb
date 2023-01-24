# frozen_string_literal: true

require_relative "./helper"

class TestSamplePlugin < Bridgetown::TestCase
  def setup
    @config = Bridgetown.configuration(
      "root_dir"    => root_dir,
      "source"      => source_dir,
      "destination" => dest_dir,
      "quiet"       => true
    )
    @config.run_initializers! context: :static
    @site = Bridgetown::Site.new(@config)

    with_metadata title: "My Awesome Site" do
      @site.process
    end
  end

  context "sample plugin" do
    setup do
      @contents = File.read(dest_dir("index.html"))
    end

    should "output the overridden metadata" do
      assert_includes @contents, "<title>My Awesome Site</title>"
    end

    should "output the sample Liquid tag" do
      assert_includes @contents, "This plugin works!"
    end
  end
end
