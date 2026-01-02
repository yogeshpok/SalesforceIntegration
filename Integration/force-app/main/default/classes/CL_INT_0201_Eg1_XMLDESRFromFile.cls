public class CL_INT_0201_Eg1_XMLDESRFromFile {

    
    Public Blob xmlfile{set; get;}
    
    Public Void Callme()
    {
        List<Account> accounts = new List<Account>();
        String xmlString = xmlfile.toString();
        xmlfile =null;
        DOM.Document doc = new DOM.Document();
        doc.load(xmlString);
        
        DOM.XmlNode root = doc.getRootElement();
        List<DOM.XmlNode> branch =  root.getChildElements();
        
        for(DOM.XmlNode eb : branch)
        {
            Account acc = new Account();
            acc.Name = eb.getAttributeValue('Name',null);
            acc.Phone = eb.getAttributeValue('Phone',null);
            acc.Industry = eb.getAttributeValue('Industry',null);
            accounts.add(acc);

        }
        insert accounts;
    }
    
    
}