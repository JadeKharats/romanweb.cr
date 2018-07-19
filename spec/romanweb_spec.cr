require "./spec_helper"

describe "Your::Kemal::App" do

  # You can use get,post,put,patch,delete to call the corresponding route.
  it "renders /" do
    get "/"
    response.body.should eq "Hello World!"
  end

  it "render /roman/1" do
    get "/roman/1"
    response.body.should eq "I"
  end

  it "render /roman/2896" do
    response.body.should eq "MMDCCCXCVI"
  end

end
