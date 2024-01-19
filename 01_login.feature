Feature: Login

  Scenario: Login with Phone number
    Given url baseURL+'/ezyCart/customer/login'
    And request Pno
    When method POST
    Then status 200
    And print response
    * def printresp = response.countryCode+response.phoneNumber
    And print printresp
    * MPno=Pno.countryCode+Pno.phoneNumber
    * match MPno == printresp.toString()

  Scenario: Login with ezyList
    Given url ezylistURL+'/user?'
    And params ezyListLoginParam
    When method GET
    Then status 200
    And print response

  Scenario: Login with Redtick Membership card
    Given url baseURL+'/v1/ezyCart/member/login'
    And request MemberNo
    When method POST
    Then status 200
    And print response
