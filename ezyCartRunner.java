package com.ezyCart;

import static org.junit.jupiter.api.Assertions.assertEquals;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class ezyCartRunner {
	@Test
    void testParallel() {
        Results results = Runner.path("/ezyCartAPI.karate/src/test/java : com.ezyCart")
                //.outputCucumberJson(true)
                .parallel(10);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
	/*@Test 
	Karate Activation()
	{
		return Karate.run("00_Activation").relativeTo(getClass());
	}*/
	
	 @Test
	    Karate login() {
	        return Karate.run("01_login").relativeTo(getClass());
	    }

	 @Test
	    Karate CreateCart() {
	        return Karate.run("02_CreateCart").relativeTo(getClass());
	 }
	        @Test
		    Karate GetBarcode() {
		        return Karate.run("03_GetBarcode").relativeTo(getClass());
}
	        @Test
		    Karate AddProduct() {
		        return Karate.run("04_AddProduct").relativeTo(getClass());
}
	        @Test
		    Karate Remove() {
		        return Karate.run("05_Remove").relativeTo(getClass());
	        }
		        @Test
			    Karate PaymentReview() {
			        return Karate.run("06_PaymentReview").relativeTo(getClass());
}
		        @Test
			    Karate PaymentOption() {
			        return Karate.run("07_PaymentOption").relativeTo(getClass());
}
		        @Test
			    Karate ChoosePaymentMethod() {
			        return Karate.run("08_ChoosePayment").relativeTo(getClass());
}
		        @Test
			    Karate PaymentRedirect() {
			        return Karate.run("10_PaymentStatus").relativeTo(getClass());
}     
		        @Test
			    Karate PaymentStatus() {
			        return Karate.run("11_SendReceipt").relativeTo(getClass());
}     
}
