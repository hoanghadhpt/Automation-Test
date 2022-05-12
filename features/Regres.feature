Feature: Request

  In order to keep Regres api stable
  As a tester
  I want to make sure that everything works as expected

  Scenario: Get Activities
    Given I make a GET request to https://fakerestapi.azurewebsites.net/api/v1/Activities
     When I receive a response
     Then I expect response should have a status 200
     And I expect response should have a json schema
     """
     {
  "$schema": "http://json-schema.org/draft-04/schema#",
  "type": "array",
  "items": {
    "type": "object",
    "properties": {
      "id": {
        "type": "integer"
      },
      "title": {
        "type": "string"
      },
      "dueDate": {
        "type": "string"
      },
      "completed": {
        "type": "boolean"
      }
    }
  }
}
     """

     Scenario: Just Another Scenario
     Given I make a GET request to https://fakerestapi.azurewebsites.net/api/v1/Activities
     When I receive a response
     Then I expect response should have a status 202
