Feature: send receipt

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
    Given url baseURL+'/ezyCart/payment'
    * header Authorization = 'Bearer ' + authtoken
    And request Paymentoption
    When method Post
    Then status 200
    And print response
    * def invoiceNo = response.referenceNo

  Scenario: send email
    Given url baseURL+'/ezyCart/payment/'+invoiceNo+'/receipt'
    * header Authorization = 'Bearer ' +authtoken
    And request sendreceipt
    When method POST
    And print response
