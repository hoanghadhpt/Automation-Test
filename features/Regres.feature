Feature: Request

  In order to keep Regres api stable
  As a tester
  I want to make sure that everything works as expected

  Scenario: Get Inventory
    Given I make a GET request to https://petstore.swagger.io
     When I receive a response
     Then I expect response should have a status 200
