public class CL_INT_3012_Eg2_JSON_SER_SOQL {

    
    public Void BringAccount()
    {
        System.JSONGenerator Js = JSON.creategenerator(true);
        js.writeStartObject();
        try{
            List<Account>Ac = [Select Name , Phone from Account];
            
            for(Account EA : Ac)
            {
                js.writeStringField('AccountName',EA.Name);
                js.writeStringField('Phone',EA.Phone);
                js.writeStringField('Status','Success');
                js.writeNumberField('Code',800);
            }
        }
        catch(Exception e)
        {
                js.writeStringField('Status','Failed');
                js.writeNumberField('Code',600);
        }
        
        
        JS.WriteEndObject();
        
        String OP = js.getAsString();
        system.debug(OP);
        
    }
    
}

// calling the class
//CL_INT_3012_Eg2_JSON_SER_SOQL s= new CL_INT_3012_Eg2_JSON_SER_SOQL();
//s.BringAccount();