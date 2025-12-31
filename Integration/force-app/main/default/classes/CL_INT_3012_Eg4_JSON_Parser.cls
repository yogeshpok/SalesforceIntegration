public class CL_INT_3012_Eg4_JSON_Parser {

    
    Public String JsonString {set;get;}
    Public Map<String,Object> Result {set;get;}
    public void CL_INT_3012_Eg3_JSON_Parser1112()
    {
        Result = new Map<String,Object>();
        String Name;
        String Phone;
        String Rating;
        
        jsonString = '{"LastName": "Pokharkar","FirstName": "Yogesh", "Customer": {"Name" : "Dell","Phone" : "123"},"Salary" : "1234"}';      // step 1 create parser
        
        System.JSONParser jp = JSON.createParser(JsonString);
        // step 2 loop for Token if exists
        
        while(jp.nextToken() != null)
        {
            //find the required label
             if(jp.getText() == 'Customer')
                 {
                     jp.nextToken(); //move the next token for values/data
                     Account acc = (Account) jp.readValueAs(Account.Class);
                     insert acc;
                 }
                if(jp.getText() == 'Salary')
                 {
                     jp.nextToken(); //move the next token for values/data
                     Decimal sal = (Decimal) jp.getDecimalValue();
                     System.debug(sal);  
                 }
              if(jp.getText() == 'FirstName')
                 {
                     jp.nextToken(); //move the next token for values/data
                     String FirstName =  jp.getText();
                     System.debug(FirstName);  
                 }
        }
        
        
    }
}

//CL_INT_3012_Eg4_JSON_Parser comp = new CL_INT_3012_Eg4_JSON_Parser();
//comp.CL_INT_3012_Eg3_JSON_Parser111();