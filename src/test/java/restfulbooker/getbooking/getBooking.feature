Feature: Get Booking
  Este servicio es utilizado para poder
  consultar la reserva por booking id
  Background:
    * url BaseUrl
    * header Accept = 'application/json'
  @BeonPath
       Scenario: Verificar petición correcta con una reserva id reciba cod 200
       Given path '/booking/' + 13
       When method GET
       Then status 200