# Práctica 5 - SYTW  
![Ruby](http://medularis.com/assets/ruby-fbdcfd4fc56395d1df69240ccd77275e.png)

## Víctor Plaza Martín - alu4329

## Objetivo de la práctica
Realizar test unitarios, rspec y uso de cookies sobre la aplicación desarrollada en prácticas anteriores.

## Descripción
Implementación de los test unitarios, desarrollo dirigido por pruebas (TDD) a través de rspec y sistema de cookies en nuestra aplicación. Para ello he desarrollado test unitarios, haciendo uso de las gemas `rack/test` y `test/unit` . Posteriormente he implementado test haciendo uso de rspec a través de la gema `rspec`y finalmente valiéndome del uso de cookies he implementado un registro de los resultados obtenidos en cada sesión.

### Archivos incluídos en esta práctica:
1. `testunitarios.rb` -> Implementación de los test unitarios desarrollados para la aplicación
2. /lib
    - `rsack.rb` -> Declaración de librerias necesarias para realizar los test rspec.
3. /spec/rsack
    - `server_spec.rb`-> Descripción e implementación de los test asociados a la gema rspec.

###Método de complicación
	$ rake
	$ rake unitarios
	$ rake rspec

Otro método:

	$ ruby juego.rb
	$ ruby testunitario.rb
	$ rspec spec/rsack/server_spec.rb

****
Posteriormente escribir en el navegador utilizado:

	http://localhost:9000

###Notas:
- Aconsejo usar la herramienta para desarrolladores de Google Chrome para visualizar que las cookies existen y su valor se modifica en función de la elección.
