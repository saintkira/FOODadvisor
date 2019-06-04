package model;

public class IngredientModel {
    private String IngredientID;
    private String RecipeID;
    private String IngredientName;

    public IngredientModel() {
    }

    public IngredientModel(String IngredientID, String RecipeID, String IngredientName) {
        this.IngredientID = IngredientID;
        this.RecipeID = RecipeID;
        this.IngredientName = IngredientName;
    }

    
    public String getIngredientID() {
        return IngredientID;
    }

    public void setIngredientID(String IngredientID) {
        this.IngredientID = IngredientID;
    }

    public String getRecipeID() {
        return RecipeID;
    }

    public void setRecipeID(String RecipeID) {
        this.RecipeID = RecipeID;
    }

    public String getIngredientName() {
        return IngredientName;
    }

    public void setIngredientName(String IngredientName) {
        this.IngredientName = IngredientName;
    }
    
}
