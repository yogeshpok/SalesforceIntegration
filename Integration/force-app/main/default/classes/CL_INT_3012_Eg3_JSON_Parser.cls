public class CL_INT_3012_Eg3_JSON_Parser {
    
    Public String JsonString {set;get;}
    Public Map<String,Object> Result {set;get;}
    public void CL_INT_3012_Eg3_JSON_Parser111()
    {
        Result = new Map<String,Object>();
        String Name;
        String Phone;
        String Rating;
        
        JsonString = '{"Status":"Sucess","Code":200,"Account":[{"Name":"Yogesh","Phone":"1234","Rating":"Hot"},{"Name":"Yogesh1","Phone":"122134","Rating":"hHot"}],"Contact":[{"LastName":"Yogesh","Phone":"45454"},{"LastName":"Ram","Phone":"45454"},{"LastName":"SSham","Phone":"45454"}]}';
        // step 1 create parser
        
        System.JSONParser jp = JSON.createParser(JsonString);
        // step 2 loop for Token if exists
        
        while(jp.nextToken() != null)
        {
            //find the required label
             if(jp.getText() == 'Account')
             {
                 jp.nextToken(); //move the next token for values/data
                 List<Account> acc = (List<Account>) jp.readValueAs(List<Account>.Class);
                 insert acc;
             }
        }
        if(jp.getText()== 'Contact'){
            jp.nextToken();
            List<Contact> Con = (List<Contact>) jp.readValueAs(List<Contact>.Class);
                 insert Con;
        }
        
    }
}

//CL_INT_3012_Eg3_JSON_Parser comp = new CL_INT_3012_Eg3_JSON_Parser();
//comp.CL_INT_3012_Eg3_JSON_Parser111();