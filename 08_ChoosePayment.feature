Feature: Choose Payment
Background: 
    * def res = call read('02_CreateCart.feature')
    * def authtoken = res.response.token
    Given url baseURL+'/v2/ezyCart/cart/item'
    * header Authorization = 'Bearer ' +authtoken
    And request Barcode
    When method POST
    Then status 200
    And print response
    * def cartID = response.cartId
  Scenario: Verify user is able to choose payment type HLB
    Given url baseURL+'/ezyCart/payment'
    * header Authorization = 'Bearer ' + authtoken
    And request {"paymentId": "HLB@123456789","channelCode": "HLB"}
    When method Post
    Then status 200
    And print response
