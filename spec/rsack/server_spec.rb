require 'spec_helper'

describe PiedraPapelTijera::App do

  #let(:server) { Rack::MockRequest.new(Rsack::Server.new) }
  let (:server) {Rack::MockRequest.new(PiedraPapelTijera::App.new) }
  def server
    #Rack::Mockrequest.new(Rsack::Server.new)
    Rack::MockRequest.new(PiedraPapelTijera::App.new) 
  end

  context '/' do
    it "Debería devolver código de estado 200" do
      response = server.get('/')
      response.status.should == 200
    end

    it "Deberia haber una cabecera y un middle antes de elegir opción" do
      response.server.get('/')
      response.server.body = "Cabecera"
    end
  end
end
