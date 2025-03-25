package myPrj04;

public class GreenTea extends Recipe {
	
	public GreenTea (String recipeName, String[] ingredients, int ingredientsNum) {
		super(recipeName, ingredients, ingredientsNum);
	}
	
	@Override
	public void viewingredients() {
		System.out.println(super.getRecipeName());
	}
}
