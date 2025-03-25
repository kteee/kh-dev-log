package myPrj04;

import java.util.Arrays;

public abstract class Recipe {
	
	private String recipeName;
	private String[] ingredients;
	private int ingredientsNum;
	
	@Override
	public String toString() {
		return "Recipe [recipeName=" + recipeName + ", ingredients=" + Arrays.toString(ingredients)
				+ ", ingredientsNum=" + ingredientsNum + "]";
	}
	
	public Recipe(String recipeName, String[] ingredients, int ingredientsNum) {
		this.recipeName = recipeName;
		this.ingredients = ingredients;
		this.ingredientsNum = ingredientsNum;
	}
	
	public abstract void viewingredients();
	
	public String getRecipeName() {
		return recipeName;
	}
	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}
	public String getIngredients(int i) {
		return ingredients[i];
	}
	public void setIngredients(int i, String ingredients) {
		this.ingredients[i] = ingredients;
	}
	public int getIngredientsNum() {
		return ingredientsNum;
	}
	public void setIngredientsNum(int ingredientsNum) {
		this.ingredientsNum = ingredientsNum;
	}
}
