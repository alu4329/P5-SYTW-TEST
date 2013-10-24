require 'spec_helper'

describe PiedraPapelTijera::App do

  #let(:server) { Rack::MockRequest.new(Rsack::Server.new) }
  let (:server) {Rack::MockRequest.new(PiedraPapelTijera::App.new) }
  def server
    #Rack::Mockrequest.new(Rsack::Server.new)
    Rack::MockRequest.new(PiedraPapelTijera::App.new) 
  end

  context '/' do
    it "should return a 200 code" do
      response = server.get('/')
      response.status.should == 200
    end
  end
end
