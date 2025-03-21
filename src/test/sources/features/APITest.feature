@API
Feature: Ejemplo de request

    @BASIC
    Scenario: Prueba Get al endpoint.
        Given I send a GET request to the https://api.github.com/ URI
        Then I get a 200 status

    @USERS
    Scenario: Validar la cantidad de entradas en la respuesta
        Given I send a GET request to the https://jsonplaceholder.typicode.com URI
        Then I validate they are 10 items on the /users endpoint

    @TEXT
    Scenario: Validar que un elemento esta en la respuesta
        Given I send a GET request to the https://jsonplaceholder.typicode.com URI
        Then I validate there is a value: Brent in the response at /users endpoint

    @ANI
    Scenario: Validar que un elemento esta en la respuesta
        Given I send a GET request to the https://jsonplaceholder.typicode.com URI
        Then I validate the nested value: Kattie Turnpike in the response at /users endpoint
