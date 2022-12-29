@isTest
private class CalloutControllerTest {
     @isTest static void testCallout() {
        // Set mock callout class 
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());
        
        // This causes a fake response to be sent
        // from the class that implements HttpCalloutMock. 
        CalloutController cc = new CalloutController();
        Object res = cc.startRequest();
        
    }
}