package model;

import java.util.List;

public class RecipeModel {
    private String recipeID;
    private String recipeName;
    private String price;
    private String description;
    private String type;
    private List<IngredientModel> ingredients;

    public RecipeModel() {
    }

    public RecipeModel(String recipeID, String recipeName, String price, String description, String type) {
        this.recipeID = recipeID;
        this.recipeName = recipeName;
        this.price = price;
        this.description = description;
        this.type = type;
    }

    public RecipeModel(String recipeID, String recipeName, String price, String description, String type, List<IngredientModel> ingredients) {
        this.recipeID = recipeID;
        this.recipeName = recipeName;
        this.price = price;
        this.description = description;
        this.type = type;
        this.ingredients = ingredients;
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public List<IngredientModel> getIngredients() {
        return ingredients;
    }

    public void setIngredients(List<IngredientModel> ingredients) {
        this.ingredients = ingredients;
    }

    
}
