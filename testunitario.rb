require "test/unit"
require "rack/test"
require './juego.rb'


class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Rack::Builder.new do
      run PiedraPapelTijera::App.new
    end.to_app
  end

  #Test para comprobar que la página se ha cargado correctamente
  def test_index
    get "/"
    #puts last_response.inspect
    assert last_response.ok?
  end

  #Test para comprobar la estructura de mi aplicación
  def test_body
    get "/"
    assert last_response.body.include?("cabecera")
  end


end

