require 'spec_helper'
require '././juego.rb'

describe PiedraPapelTijera::App do

  let (:server) {Rack::MockRequest.new(PiedraPapelTijera::App.new) }
  def server
    Rack::MockRequest.new(PiedraPapelTijera::App.new) 
  end

  context '/' do
    it "Debería devolver código de estado 200" do
      response = server.get('/')
      response.status.should == 200
    end

    it "Deberia haber una cabecera y un middle antes de elegir opción" do
      response = server.get('/')
      response.body = "Cabecera"
      response.body = "Middle"
    end

    it "Debería haber un botton despues de que el usuario elija una opción" do
      response = server.get('/?choice=papel')
      response.body = "botton"
    end

    it "Comprobación de los hash del documento" do
      response = server.get('/') 
      #server.defeat.have_key?(:papel)
      PiedraPapelTijera::App.call.@throws.should be_a_kind_of('nil')
    end
  end
end
