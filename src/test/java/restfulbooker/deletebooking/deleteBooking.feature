Feature: delete booking
  este servico es utilizado para poder eliminar las
  reserva de los clientes por booking id

  Background:
    * url BaseUrl
    * header Context-Type = 'appliction/json'
  @HappyPath
    Scenario: Verificar petición correcta para eliminar una reserva reciba 201
      * def createTokenReponse = call read('classpath:common/createToken.feature')
      * def createBookingReponse = call read('classpath:common/createBooking.feature')
      * def accessToken = createTokenReponse.response.token
      * def bookingId = createBookingReponse.response.bookingid
      Given path '/booking/' + bookingId
      And cookie token = accessToken
      When method DELETE
      Then status 201
