require "roman"
require "kemal"

get "/" do
  "Hello World!"
end

get "/roman/:number" do |env|
  Roman.convert(env.params.url["number"].to_i)
end


Kemal.run
