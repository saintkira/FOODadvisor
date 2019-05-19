package helper;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Jamin
 */
public class ClientHelper {
    
    public static <T> boolean doCreate(String spName, T object){
        boolean result = false;
        String json = null;
        
        json = JsonHelper.toJson(object);
        if(json != null){
            result = ConnectionHelper.callSP(spName, json);
        }
        
        return result;
    }
    
    public static <T> boolean doEdit(String spName, T object){
        boolean result = false;
        String json = null;
        
        json = JsonHelper.toJson(object);
        if(json != null){
            result = ConnectionHelper.callSP(spName, json);
        }
        
        return result;
    }
    
    public static boolean doDelete(String spName, String id){        
        boolean result = false;
        result = ConnectionHelper.callSP(spName, id);
        
        return result;
    }
    
    public static <T> T findByID(String spName, String id){        
        T object = null;
        String json = null;
        
        json = ConnectionHelper.callQuerySP(spName, id);
        List<T> list = new ArrayList<>();
        list = JsonHelper.json2List(json);
        object = list.get(0);
        
        return object;
    }
}
