package model;

public class IngredientModel {
    private String ingredientID;
    private String recipeID;
    private String ingredientName;
    private int count;
    private String check;

    public IngredientModel() {
    }

    public IngredientModel(String ingredientName, int count) {
        this.ingredientName = ingredientName;
        this.count = count;
    }

    public IngredientModel(String ingredientName, int count, String check) {
        this.ingredientName = ingredientName;
        this.count = count;
        this.check = check;
    }

    public IngredientModel(String ingredientID, String recipeID, String ingredientName, int count, String check) {
        this.ingredientID = ingredientID;
        this.recipeID = recipeID;
        this.ingredientName = ingredientName;
        this.count = count;
        this.check = check;
    }

    public String getIngredientID() {
        return ingredientID;
    }

    public void setIngredientID(String ingredientID) {
        this.ingredientID = ingredientID;
    }

    public String getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(String recipeID) {
        this.recipeID = recipeID;
    }

    public String getIngredientName() {
        return ingredientName;
    }

    public void setIngredientName(String ingredientName) {
        this.ingredientName = ingredientName;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

}
