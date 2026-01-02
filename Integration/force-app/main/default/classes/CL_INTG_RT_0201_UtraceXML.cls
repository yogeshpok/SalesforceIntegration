public class CL_INTG_RT_0201_UtraceXML {

    Public string IpAddress{set;get;}
    Public string body{set;get;}
    Public string Status{set;get;}
    Public string data{set;get;}
    Public Map<String,Object> res{set;get;}
    Public void CallUtrace()
    {
        
        string EndPoint = 'https://utrace.me/?query='+IpAddress; // step 1 create endpoint url
        res = new Map<String,Object>();
        HTTP p = new HTTP();                                        // step 2 initilize the HTTP protocall
        HttpRequest req = new HTTPRequest();                        // step 3 Create the Request structure
        req.setEndPoint(EndPoint);                                  // Step 4 on request structure set endpoint(address)     
        req.setMethod('GET');                                       // step 5 on request structure set Method
        
        Httpresponse respose = p.send(req); 
        
        body = respose.getBody();
        
        DOM.Document doc= new DOM.Document();
        doc.load(body);
      
        DOM.xmlNode root = doc.getRootElement(); // result
        List<DOM.XmlNode> result = root.getChildElements(); // result
        DOM.XmlNode parent = result[0];
        List<DOM.XmlNode> data = root.getChildElements();
        for(DOM.XmlNode ed : data )
        {
           res.put(ed.getName(),ed.getText());            
        }
        
        
    }
    
}