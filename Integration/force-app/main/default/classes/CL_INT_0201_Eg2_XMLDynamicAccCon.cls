public class CL_INT_0201_Eg2_XMLDynamicAccCon {

    Public String XmlString{set;get;}
    
    Public Void AccConcreattion()
    {
        List<Account> acc = [Select Name,Phone, Industry,(Select LastName,FirstName,Email from contacts where Email != null and FirstName != null )from Account where Phone != null and Industry != null];
        DOM.Document doc = new DOM.Document();
        DOM.XmlNode root = doc.createRootElement('Accounts',null,null);
        
        for(Account EA : Acc)
        {
            DOM.XmlNode branch = root.addChildElement('Account',null,null);
            branch.setAttribute('Name',EA.Name);
            branch.setAttribute('Phone',EA.Phone); 
            branch.setAttribute('Industry',EA.Industry);
            if(EA.contacts.size() > 0)
            {
                  DOM.XmlNode branch2 = branch.addChildElement('Contacts',null,null);
                  for(Contact EC : EA.Contacts)
                  {
                      DOM.XmlNode Twig = branch2.addChildElement('Contact',null,null);
                      Twig.setAttribute('LastName',EC.LastName);
                      Twig.setAttribute('FirstName',EC.FirstName); 
                      Twig.setAttribute('Email',EC.Email);
                  }
            }
        }
                      XmlString = doc.toXmlString();
    }
    
 
}