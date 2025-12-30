public class CL_INT_3012_Eg2_JSON_Parser {
    
    
    Public String JsonString {set;get;}
    Public Map<String,Object> Result {set;get;}
    public void CL_INT_3012_Eg2_JSON_Parser()
    {
        Result = new Map<String,Object>();
        String Name;
        String Phone;
        String Rating;
        
        //JsonString = '{"Status":"Sucess","Code":200,"Account":[{"Name":"Yogesh","Phone":"1234","Rating":"Hot"},{"Name":"Yogesh1","Phone":"122134","Rating":"hHot"}],"Contact":[{"FirstName":"Yogesh","Phone":"45454"},{"FirstName":"Ram","Phone":"45454"},{"FirstName":"SSham","Phone":"45454"}]}';
        
        //converting the simple json using the JSONParser Not recommended use the JSON class Only if the json is simple.
        JsonString = '{"Name":"Yogesh","Phone":"1234","Rating":"Hot"}'; //Simple decerialization
        Account acc = (Account) JSON.deserializeStrict(JsonString, Account.Class);
        
        System.JSONParser jp = JSON.createParser(JsonString);
        while(jp.nextToken() != null)
        {
           // Result.put(jp.getText(),jp.getCurrentToken());
           
           if(jp.getText() == 'Name')
               {
                   jp.NextToken();
                   Name = JP.getText();
               }
            if(jp.getText() == 'Phone')
                {
                 
                   jp.NextToken();
                   Phone = JP.getText();
                }
             if(jp.getText() == 'Rating')
               {
                   jp.NextToken();
                   Rating = JP.getText();
               }

        }
        
      Account acc1 = new Account();
        acc1.Name   = Name;
        acc1.Phone  = Phone;
        acc1.Rating = Rating;

        insert acc1;
    }
}


//CL_INT_3012_Eg2_JSON_Parser PR= new CL_INT_3012_Eg2_JSON_Parser();
//PR.CL_INT_3012_Eg2_JSON_Parser();