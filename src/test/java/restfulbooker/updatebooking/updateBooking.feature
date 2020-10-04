Feature: UPDATE BOOKING
  ESTE SERVICIO ES UTILIZADO PARA PODER
  ACTUALIZAR LAS RESERVAS DEL CLIENTE

  Background:
    * url BaseUrl
    * header Context-Type = 'appliction/json'
    * header Accept = 'application/json'

    Scenario:Verificar petición correcta para actualizar una reserva reciba 200
      * def createTokenReponse = call read('classpath:common/createToken.feature')
      * def accessToken = createTokenReponse.response.token
      Given path '/booking/' + 9
      * cookie token = accessToken
      And request
      """
        {
          "firstname" : "James",
          "lastname" : "Tinco",
         "totalprice" : 777,
         "depositpaid" : true,
         "bookingdates" : {
          "checkin" : "2021-01-01",
          "checkout" : "2021-01-01"
        },
           "additionalneeds" : "Breakfast"
           }
      """
      When method PUT
      Then status 200
