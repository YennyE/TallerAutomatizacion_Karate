@appContact_login
Feature: Login to app contact

  Background:
    * url baseUrl
    * header Accept = 'application/json'

  Scenario: Customer Login
    Given path 'login'
    And request { "email": "eliza@gmail.com", "password": "123456789"}
    When method POST
    Then status 200
    And match response ==
    """
    {
    "user": {
        "_id": '#string',
        "firstName": '#string',
        "lastName": '#string',
        "email": '#string',
        "__v": '#number'
    },
    "token": '#string'
    }
    """
