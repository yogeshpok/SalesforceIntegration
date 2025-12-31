public class CL_INT_3112_XML_Eg1 {

    
    Public String xmlString{set;get;}
    Public CL_INT_3112_XML_Eg1()
    {
        DOM.Document doc = new Dom.Document();// step 1 Serialization create the xml document
        
        //DOM.XmlNode root = doc.createRootElement('Employee' , 'https://www.rupom.in', 'rc');
        DOM.XmlNode root = doc.createRootElement('Employee' , null, null); //create root
        DOM.XmlNode trunk1 = root.addChildElement('Main', null, null); //create branch
        DOM.XmlNode trunk2 = root.addChildElement('Contractor', null, null); //create branch
        DOM.XmlNode branch2 = trunk2.addChildElement('Name', null, null); //create branch
        branch2.addTextNode('Yogesh'); //add data fruit

        DOM.XmlNode branch = trunk1.addChildElement('Name', null, null); //create branch
        
        branch.addTextNode('Rupom'); //add data fruit
        
        xmlstring    = doc.toXMLstring(); // step give the output xml give the plant
        
        
        
    }
}