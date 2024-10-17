Feature: Buscar Pokemon

  Scenario: Buscar Pokemon Pikachu
    Given url 'https://pokeapi.co/api/v2/pokemon-species/pikachu'
    When method GET
    Then status 200
    And match $.id == 25
    And match $.name == "pikachu"

  Scenario: Buscar Pokemon Mewtwo
    Given url 'https://pokeapi.co/api/v2/pokemon-species/mewtwo'
    When method GET
    Then status 200
    And match $.id == 150
    And match $.name == "mewtwo"

  Scenario: Buscar Pokemon No Identificado
    Given url 'https://pokeapi.co/api/v2/pokemon-species/a'
    When method GET
    Then status 404