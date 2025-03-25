package myPrj04;

public class Caffelatte extends Recipe {
	
	public Caffelatte (String recipeName, String[] ingredients, int ingredientsNum) {
		super(recipeName, ingredients, ingredientsNum);
	}
	
	@Override
	public void viewingredients() {
		System.out.println(super.getRecipeName());
	}
}
