require "roman"
require "kemal"
# require "raven"

# Raven.configure do |config|
#   config.dsn = ENV["SENTRY_URL"]
# end

get "/" do
  "Hello World!"
end

# get "/errors" do
#   1 / 0
# end

get "/roman/:number" do |env|
  # Raven.capture do
  Roman.convert(env.params.url["number"].to_i)
  # end
end


Kemal.run
