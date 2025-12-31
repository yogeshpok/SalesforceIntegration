public class CL_INT_3112_XML_Eg2 {

    public String xmlString {set; get;}
    public CL_INT_3112_XML_Eg2()
    {
        DOM.Document doc = new DOM.Document();
        DOM.XmlNode root = doc.createRootElement('State',null,null);
        DOM.XmlNode stem = root.addChildElement('Capital',null,null);
         DOM.XmlNode Branch = stem.addChildElement('CM',null,null);
         Branch.addTextNode('Yogesh'); //add data fruit
        
        xmlString = doc.toXmlString();
    }
}