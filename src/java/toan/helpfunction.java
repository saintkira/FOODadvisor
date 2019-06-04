package toan;

public class helpfunction {

    public helpfunction() {
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
