Feature: Get Barcode
Background: 
 
  Scenario: Verify that the user can check product price
    Given url baseURL+'/ezyCart/product/'+Barcode.barcode+'?'
    And params MerchartOutletID
    When method GET
    Then status 200
    And print response
