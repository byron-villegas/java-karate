Feature: Buscar Personaje Star Wars

  Scenario: Buscar Pokemon Pikachu
    Given url 'https://swapi.dev/api/people/1'
    When method GET
    Then status 200
    And match $.name == "Luke Skywalker"
    And match $.gender == "male"