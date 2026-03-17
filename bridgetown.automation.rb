# If your plugin requires a lot of steps to get set up, consider writing an automation to help guide users.
# You could set up and configure all sorts of things, for example:
#
# add_gem "my_plugin"
#
# add_npm_for_gem "my_plugin"
#
# run "bundle add some_other_gem"
#
# apply "#{__dir__}/additional.automation.rb"
#
# add_initializer :my_plugin do
#   <<~RUBY
#     do
#       some_config_key 12345
#     end
#   RUBY
# end
#
# create_builder "my_nifty_builder.rb" do
#   <<~RUBY
#     class MyNeatBuilder < SiteBuilder
#       def build
#         puts MyPlugin.hello
#       end
#     end
#   RUBY
# end
#
# javascript_import do
#   <<~JS
#     import { MyPlugin } from "my_plugin"
#   JS
# end
#
# javascript_import 'import "my_plugin/frontend/styles/index.css"'
#
# create_file "src/_data/plugin_data.yml" do
#   <<~YAML
#     data:
#       goes: here
#   YAML
# end
#
# color = ask("What's your favorite color?")
#
# ruby_configure :favorite_color do
#   <<~RUBY
#     favorite_color "#{color}"
#   YAML
# end
#
# To learn more, read the Automations documentation:
# * https://www.bridgetownrb.com/docs/automations
# and the API-level documentation:
# * Freyia Automations: https://www.rubydoc.info/gems/freyia/Freyia/Automations
# * Bridgetown Automations: https://api.bridgetownrb.com/Bridgetown/Commands/Actions.html
