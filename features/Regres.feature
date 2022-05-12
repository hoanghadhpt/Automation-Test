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

     Scenario: Just Another Scenario GET Fail
     Given I make a GET request to https://fakerestapi.azurewebsites.net/api/v1/Activities
     When I receive a response
     Then I expect response should have a status 400

     Scenario: Testing POST API
     Given I make a POST request to https://fakerestapi.azurewebsites.net/api/v1/Activities
     And I set body to
     """
     {
        "id": 1,
        "title": "Title Here",
        "dueDate": "2022-05-12T09:38:55.267Z",
        "completed": true
      }
      """
      When I receive a response
      Then I expect response should have a status 200
      And I expect response should have a json like
      """
      {
        "id": 1
      }
      """
      And I expect response should have a json schema
      """
      {
        "$schema": "http://json-schema.org/draft-04/schema#",
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
      """

  Scenario: Testing PUT API
     Given I make a PUT request to https://fakerestapi.azurewebsites.net/api/v1/Activities/1
     And I set body to
     """
     {
        "id": 1,
        "title": "string",
        "dueDate": "2022-05-12T09:42:21.790Z",
        "completed": true
      }
     """
      When I receive a response
      Then I expect response should have a status 200
      And I expect response should have a json schema
      """
      {
        "$schema": "http://json-schema.org/draft-04/schema#",
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
      """