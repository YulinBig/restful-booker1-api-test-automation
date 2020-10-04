Feature: Partial Update BOOKING
  ESTE SERVICIO ES UTILIZADO PARA PODER
  ACTUALIZAR PARCIALMENTE LAS RESERVAS DEL CLIENTE

  Background:
    * url BaseUrl
    * header Context-Type = 'appliction/json'
    * header Accept = 'application/json'

  @BeonPath
  Scenario:Verificar petición correcta para actualizar parcialmente una reserva reciba 200
    * def createTokenReponse = call read('classpath:common/createToken.feature')
    * def accessToken = createTokenReponse.response.token
    Given path '/booking/' + 9
    * cookie token = accessToken
    And request
      """
      {
      "firstname" : "YULIN",
     "lastname" : "Brown"
       }
      """
    When method PATCH
    Then status 200

