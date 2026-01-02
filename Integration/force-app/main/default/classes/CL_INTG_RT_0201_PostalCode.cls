public class CL_INTG_RT_0201_PostalCode {


    Public List<String> Places {set;get;}
    Public String Pincode {set;get;}
    Public void getPostalDetails()
    {
        String EndPoint = 'https://api.postalpincode.in/pincode/'+Pincode;
        Places = new List<String>();
        Http p = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(EndPoint);
        req.setMethod('GET');
        
        HttpResponse res = new HttpResponse();
        p.send(req);
        
        String body = res.getBody();  
        System.debug(body);
        System.JSONParser JP = JSON.createParser(body);
        
        while(JP.nextToken()!=null)
        {
            if(JP.getText() == 'Name')
            {
                JP.nextToken();
                Places.add(JP.getText());
            }
        }
        
    }
    
    
}