# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exist?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"

# Guard-Rails supports a lot options with default values:
# daemon: false                        # runs the server as a daemon.
# debugger: false                      # enable ruby-debug gem.
# environment: 'development'           # changes server environment.
# force_run: false                     # kills any process that's holding the listen port before attempting to (re)start Rails.
# pid_file: 'tmp/pids/[RAILS_ENV].pid' # specify your pid_file.
# host: 'localhost'                    # server hostname.
# port: 3000                           # server port number.
# root: '/spec/dummy'                  # Rails' root path.
# server: thin                         # webserver engine.
# start_on_start: true                 # will start the server when starting Guard.
# timeout: 30                          # waits untill restarting the Rails server, in seconds.
# zeus_plan: server                    # custom plan in zeus, only works with `zeus: true`.
# zeus: false                          # enables zeus gem.
# CLI: 'rails server'                  # customizes runner command. Omits all options except `pid_file`!

guard 'rails' do
  watch('Gemfile.lock')
  watch(%r{^(config|lib)/.*})
end

guard :test do
  watch(%r{^test/.+_test\.rb$})
  watch('test/test_helper.rb')  { 'test' }

  # Non-rails
  watch(%r{^lib/(.+)\.rb$}) { |m| "test/#{m[1]}_test.rb" }

  # Rails 4
  # watch(%r{^app/(.+)\.rb})                               { |m| "test/#{m[1]}_test.rb" }
  # watch(%r{^app/controllers/application_controller\.rb}) { 'test/controllers' }
  # watch(%r{^app/controllers/(.+)_controller\.rb})        { |m| "test/integration/#{m[1]}_test.rb" }
  # watch(%r{^app/views/(.+)_mailer/.+})                   { |m| "test/mailers/#{m[1]}_mailer_test.rb" }
  # watch(%r{^lib/(.+)\.rb})                               { |m| "test/lib/#{m[1]}_test.rb" }

  # Rails < 4
  # watch(%r{^app/models/(.+)\.rb$})                   { |m| "test/unit/#{m[1]}_test.rb" }
  # watch(%r{^app/controllers/(.+)\.rb$})              { |m| "test/functional/#{m[1]}_test.rb" }
  # watch(%r{^app/views/(.+)/.+\.erb$})                { |m| "test/functional/#{m[1]}_controller_test.rb" }
  # watch(%r{^app/views/.+$})                          { 'test/integration' }
  # watch('app/controllers/application_controller.rb') { ['test/functional', 'test/integration'] }
end
