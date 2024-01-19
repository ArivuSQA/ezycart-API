Feature: Remove product

  Background: 
    * def res = call read('02_CreateCart.feature')
    * def authtoken = res.response.token
    Given url baseURL+'/v2/ezyCart/cart/item'
    * header Authorization = 'Bearer ' +authtoken
    And request Barcode
    When method POST
    Then status 200
    And print response

  Scenario: Verify user is able to Remove a product to the cart
    Given url baseURL+'/v1/ezyCart/ai/cart/item'
    * header Authorization = 'Bearer ' +authtoken
    And request DeleteBarcode
    When method DELETE
    Then status 200
    And print response
