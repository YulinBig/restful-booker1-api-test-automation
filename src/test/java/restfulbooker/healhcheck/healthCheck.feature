Feature: Health Check
  este servicio se utiliza
  Para poder verificar el estado del servicio
  Background:
    * url BaseUrl

  @BeonPath
    Scenario: Verificar petición correcta para consultar el estado del servicio reciba 201
      Given path '/ping'
      When method GET
      Then status 201

