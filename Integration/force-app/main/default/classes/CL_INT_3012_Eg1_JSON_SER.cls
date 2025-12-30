public class CL_INT_3012_Eg1_JSON_SER {

    
   public void createJson(String Name, String Phone, String Industry)
   {
       
       System.JSONGenerator js = JSON.createGenerator(true);//step 1 create JSON Generator
       js.writeStartObject(); // Step 2 Start Writing to JSON
       try{
           
           Account a = New Account();
           A.Name = Name;
           A.Phone = Phone;
           A.Industry = Industry;
           Insert a;
           
           js.writeStringField('Status','success'); // write to JSON as per the requirement
           js.writeIdField('AccId',A.Id);
           js.writeStringField('msg','Account Created Sucessfully');
           js.writeNumberField('Code',200);
           
       }
       catch(Exception e)
       {
                   
           js.writeStringField('Status','success');
        //   js.writeIdField('AccId',A.Id);
           js.writeStringField('msg','Account Failed to create');
           js.writeNumberField('Code',100);
       }
       js.writeEndObject();   //Step 3 End Writing JSON
       String Result = js.getAsString();//get the final output
       System.debug(Result); // see the Json File output
   }
    
    
    
}

// calling the class
//CL_INT_3012_Eg1_JSON_SER j = new CL_INT_3012_Eg1_JSON_SER();
//j.createJson('JSON Tech','2222','Energy');