public class passByValuevspassByReference {
    
    public void mainValueMethod(){
        
        String websiteUrl = 'www.apexhours.com';
        
        System.debug('Before value call ' +websiteUrl);
        passByValueCall(websiteUrl);
        System.debug('After value call ' +websiteUrl);
    }
    
    private void passByValueCall(String websiteUrlValue){
        websiteUrlValue = 'www.salesforce.com';   
    }
    
}