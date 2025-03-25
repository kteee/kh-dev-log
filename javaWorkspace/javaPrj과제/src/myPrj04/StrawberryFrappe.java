package myPrj04;

public class StrawberryFrappe extends Recipe {
	
	public StrawberryFrappe (String recipeName, String[] ingredients, int ingredientsNum) {
		super(recipeName, ingredients, ingredientsNum);
	}
	
	@Override
	public void viewingredients() {
		System.out.println(super.getRecipeName());
	}
}
