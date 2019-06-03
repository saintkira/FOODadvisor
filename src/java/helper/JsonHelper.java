package helper;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jamin
 */
public class JsonHelper
{       
    public static <T> String toJson(T object){
        String json = null;
        
        ObjectMapper mapper = new ObjectMapper();
        mapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        
        try {
            json = mapper.writeValueAsString(object);            
        } catch (JsonProcessingException ex) {
            Logger.getLogger(JsonHelper.class.getName()).log(Level.SEVERE, null, ex);
        } 
        
        return json;
    }
    
    public static <T> List<T> json2List(String json) {
        List<T> list = new ArrayList<>();
        ObjectMapper mapper = new ObjectMapper();
        
        try {
            list = mapper.readValue(json, List.class);
        } catch (IOException ex) {
            Logger.getLogger(JsonHelper.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return list;
    }
}
