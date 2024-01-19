Feature: Add product

  Background: 
    * def testData = read('/testdata.json')
    * def res = call read('02_CreateCart.feature')
    * set testData.token = res.response.token


  Scenario: Verify user is able to add product to the cart
    Given url baseURL+'/v2/ezyCart/cart/item'
    * header Authorization = 'Bearer ' +testData.token
    And request Barcode
    When method POST
    Then status 200
    And print response
