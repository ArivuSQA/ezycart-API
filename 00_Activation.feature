Feature: Activation	
Scenario: Activate cart

      * def Key =
      """
      {
    "activationKey":"ALpxvmI0456",
    "trollyNo":"102"}
      """
   
    Given url 'https://api-staging-ops01.retailetics.com'
    And def headers_params =  
    """
    {
    "apiKey" : "Test101",
    "deviceId" : "n025abdf8-9160-test103",
    "deviceType":"Android",
    "deviceOsVersion":"Android 9.1",
    "appVersion":"1.0.0",
    "deviceBrand":"Android Orem",
    "appVersion":"1.0.0",
    "buildNo":"2",
    "deviceToken":"test1",
    "deviceLocale":"my",
    "appMode":"ezyCart"
    }
    """
    And headers headers_params
    And request Key
    When method POST
    Then status 200
    And print response
    


