/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 *
 * @author trangnmt
 */
public class Menu7Days {
    @JsonProperty("MenuID")
    private String menuID;
    
    @JsonProperty("Username")
    private String username;
    
    @JsonProperty("Time")
    private String time;
    
    @JsonProperty("Weekdays")
    private String weekdays;    

    private String isDiet;
    
    @JsonProperty("RecipeID")
    private String recipeID;
    
    private String recipeImage;

    public Menu7Days() {
    }

    public Menu7Days(String menuID, String username, String time, String weekdays, String isDiet, String recipeID) {
        this.menuID = menuID;
        this.username = username;
        this.time = time;
        this.weekdays = weekdays;
        this.isDiet = isDiet;
        this.recipeID = recipeID;
    }

    public String getMenuID() {
        return menuID;
    }

    public void setMenuID(String menuID) {
        this.menuID = menuID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getWeekdays() {
        return weekdays;
    }

    public void setWeekdays(String weekdays) {
        this.weekdays = weekdays;
    }

    public String getIsDiet() {
        return isDiet;
    }

    public void setIsDiet(String isDiet) {
        this.isDiet = isDiet;
    }

    public String getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(String recipeID) {
        this.recipeID = recipeID;
    }

    public String getRecipeImage() {
        return recipeImage;
    }

    public void setRecipeImage(String recipeImage) {
        this.recipeImage = recipeImage;
    }    
    
}
