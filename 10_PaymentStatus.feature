Feature: Payment status
Background:
* def res = call read('08_ChoosePayment.feature')
* def refno = res.response.referenceNo
  Scenario: Verify user is able to choose payment Status
    Given url baseURL+'/ezyCart/payment/'+ refno +'/status'
    When method Get
    Then status 200
    And print response
