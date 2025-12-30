Public class CL_INT_3012_Eg1_JSON_Parser {
   
    
    Public String JsonString {set;get;}
    Public Map<String,Object> Result {set;get;}
   	Public CL_INT_3012_Eg1_JSON_Parser()
    {
        Result = new Map<String,Object>();
        JsonString = '{"NAME":"Rupom","Marks":[10,23,34],"City":"hyd"}';
        System.JSONParser jp = JSON.createParser(JsonString);
        while(jp.nextToken() != null)
        {
            Result.put(jp.getText(),jp.getCurrentToken());
        }
    }
}