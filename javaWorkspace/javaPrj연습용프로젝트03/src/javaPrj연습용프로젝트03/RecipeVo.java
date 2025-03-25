package javaPrj연습용프로젝트03;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class RecipeVo {
	
	private String no;
	private String type; 
	private String recipeName;
	private String[] ingredients;
	private int ingredientsNum;
	
	public RecipeVo(String no, String type, String recipeName, String[] ingredients, int ingredientsNum) {
		this.no = no;
		this.type = type;
		this.recipeName = recipeName;
		this.ingredients = ingredients;
		this.ingredientsNum = ingredientsNum;
	}

	@Override
	public String toString() {
		return "RecipeVo [no=" + no + ", type=" + type + ", recipeName=" + recipeName + ", ingredients="
				+ Arrays.toString(ingredients) + ", ingredientsNum=" + ingredientsNum + "]";
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRecipeName() {
		return recipeName;
	}

	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}

	public String[] getIngredients() {
		return ingredients;
	}

	public void setIngredients(String[] ingredients) {
		this.ingredients = ingredients;
	}

	public int getIngredientsNum() {
		return ingredientsNum;
	}

	public void setIngredientsNum(int ingredientsNum) {
		this.ingredientsNum = ingredientsNum;
	}
	
}