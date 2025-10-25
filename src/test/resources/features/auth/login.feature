Feature: User Login

  Background:
    * url baseUrl

  Scenario: Successful login
    Given path 'login'
    And request { username: 'john', password: 'secret' }
    When method post
    Then status 200
    And match response == { token: '#string' }
