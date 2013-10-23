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


  #Test para comprobar la estructura del site antes de elegir una opción
  def test_body
    get "/"
    assert last_response.body.include?("cabecera")
    assert last_response.body.include?("middle")
    assert !last_response.body.include?("botton")
  end


  #Test para comprobar que al realizar una elección, por ejemplo papel, se carga la sección de resultados
  def test_posteleccion
    get "/?choice=papel"
    assert last_response.body.include?("El resultado obtenido es:")
    assert last_response.body.include?("botton")
  end


  def test_etiquetas
    get "/"
    assert_match "<h3>Elija su jugada:</h3>", last_response.body   
  end

end

