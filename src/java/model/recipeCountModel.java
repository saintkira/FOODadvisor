package model;

public class recipeCountModel {
    private Recipe recipe;
    private int count;
    private String recipeID;
    private String recipeName;
    private int no;

    public recipeCountModel(int count, String recipeID) {
        this.count = count;
        this.recipeID = recipeID;
    }

    public recipeCountModel(int count, String recipeID, String recipeName) {
        this.count = count;
        this.recipeID = recipeID;
        this.recipeName = recipeName;
    }

    public recipeCountModel(int count, String recipeID, String recipeName, int no) {
        this.count = count;
        this.recipeID = recipeID;
        this.recipeName = recipeName;
        this.no = no;
    }

    
    public recipeCountModel(Recipe recipe, int count) {
        this.recipe = recipe;
        this.count = count;
    }

    public recipeCountModel() {
    }

    public Recipe getRecipe() {
        return recipe;
    }

    public void setRecipe(Recipe recipe) {
        this.recipe = recipe;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(String recipeID) {
        this.recipeID = recipeID;
    }

    public String getRecipeName() {
        return recipeName;
    }

    public void setRecipeName(String recipeName) {
        this.recipeName = recipeName;
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }
    
    
}
