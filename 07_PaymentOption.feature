Feature:  Payment Option
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
  Scenario: Verify user is able to choose payment type 
     
    Given url baseURL+'/ezyCart/payment/options?merchantId=7&outletId=15'
    * header Authorization = 'Bearer ' + authtoken 
    When method GET
    Then status 200
    And print response
