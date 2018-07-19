require "roman"
require "kemal"

get "/" do
  "Hello World!"
end

get "/roman/1" do  
  converter = Roman.convert(1)
end


Kemal.run
