Feature: Create Cart

  Background: 

  Scenario: User Adds product into the cart
    Given url baseURL+'/v2/ezyCart/cart'
    And headers cartInfo
    And request createCart
    When method POST
    Then status 200
    And print response