public class CL_INT_3012_Eg1_JSON_SER_DESR_Attachment {

    
    Public void JSONAttachmentSER_DESR()
    {
        //step 1 retrive the attachement
        Document D = [select id,name,body from Document where name ='Test'];
        //serialize the attachment
       // String Jsd1 = JSON.serialize(D); //Simple serialization
        //System.debug(Jsd1);
        
        System.JSONGenerator Js = JSON.createGenerator(true);//complex serialization
        Js.writeStartObject();
        
        Js.writeBlobField('Attachment',D.body);
        
        Js.writeEndObject();
        String Jsd2 = js.getAsString();
        System.debug(Jsd2);
        
        /////Deserialization of attachment
        
       // Blob JDD1 = (Blob) JSON.deserialize(Jsd1,Blob.class);//Simple deserialization
        //System.debug(JDD1);
        
        System.JSONParser Jp = JSON.createParser(Jsd2); // Complex deserialization
        
        While(jp.nextToken()!= null)
        {
            if(jp.getText()=='Attachment')
            {
                jp.nextToken();
                Blob JDD2 = (Blob)jp.getBlobValue();
                System.debug(JDD2);

            }

        }
        
        
    }
    
    
    
    
}