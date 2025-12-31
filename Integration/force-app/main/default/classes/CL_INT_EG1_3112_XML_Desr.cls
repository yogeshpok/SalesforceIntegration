public class CL_INT_EG1_3112_XML_Desr {

    Public String xmlString{set;get;}
    Public String ParseData{set;get;}
    
    Public Void ConvertMe()
    {
        DOM.Document doc = new DOM.Document();  //----- create an xml Document
        doc.load(xmlString);                    //-----  load the xml file
        Dom.XmlNode root = doc.getRootElement();//-----  get the root
        //ParseData = root.getName();
        List<Dom.XmlNode> childs = root.getChildElements(); // get root element/sub root
        
        for(Dom.XmlNode ec:  childs) //run loop on each element
        {
             ParseData = ParseData+'\n'+ec.getName(); // for each root get the child 
             ParseData = ParseData+' : '+ec.getText();// for each root get the child value
        }
    }
    
    
}