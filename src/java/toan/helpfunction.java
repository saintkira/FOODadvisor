package toan;

import java.util.List;
import model.Recipe;
import model.RecipeFacade;

public class helpfunction {
    
    model.RecipeFacade recipeFacade = new RecipeFacade();
    public helpfunction() {
    }
    public String getNewRecipeID(){
        List<Recipe> recipes = recipeFacade.findAll();
        int temp;
        String result="";
        temp=Integer.parseInt(recipes.get(0).getRecipeID().replace("R",""));
        for (int i = 0; i < recipes.size(); i++) {
            if (temp==Integer.parseInt(recipes.get(i).getRecipeID().replace("R",""))) {
                temp++;
                continue;
            }else{
                break;
            }
        }
        if (String.valueOf(temp).length()==1) {
            result="R00"+String.valueOf(temp);
        }else if(String.valueOf(temp).length()==2){
            result="R0"+String.valueOf(temp);
        }else{
            result="R"+String.valueOf(temp);
        }
        
        return result;
    }
    public String shorten(String RecipeName){
        String[] words = RecipeName.split("\\s");
        int count=0;
        String result="";
        for (int i = 0; i < words.length; i++) {
            count = result.length();
            if (count<=20) {
                result=result+words[i]+" ";
                if (result.length()>=25) {
                    result=result.replace(words[i]+" ", "...");
                    break;
                }
            }else{
                result=result+"...";
                break;
            }
        }
        return result;
    }
}
