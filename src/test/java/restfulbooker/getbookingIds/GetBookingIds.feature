Feature: Get Booking Ids
  Este servicio es utilizado para la
  obtrencion de todos los bookingIds

  Background:
    * url BaseUrl
    * header Accept = 'application/json'
    Scenario: Validar que al realizar una peticion obtenemos todos los booking Ids
      Given path '/booking'
      When method GET
      Then status 200
