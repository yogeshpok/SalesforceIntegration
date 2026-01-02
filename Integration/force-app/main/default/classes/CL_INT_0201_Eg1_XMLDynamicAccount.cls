public class CL_INT_0201_Eg1_XMLDynamicAccount {

    
    Public String XmlString{set;get;}
    
    Public CL_INT_0201_Eg1_XMLDynamicAccount()
    {
        List<Account> acc = [Select Name ,Phone,Industry from Account limit 5];
        
        DOM.Document doc = new DOM.Document();
        DOM.XmlNode root= doc.createRootElement('Accounts',null,null);
        
        for(Account EA : acc)
        {
            DOM.XmlNode branch = root.addChildElement('Account',null,null);
            branch.setAttribute('Name',EA.Name);
            branch.setAttribute('Phone',EA.Phone);
            branch.setAttribute('Industry',EA.Industry);
           
        }
            XmlString = doc.toXmlString();
    } 
    
}