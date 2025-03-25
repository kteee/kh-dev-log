package myPrj04;

public class Americano extends Recipe {
	
	public Americano (String recipeName, String[] ingredients, int ingredientsNum) {
		super(recipeName, ingredients, ingredientsNum);
	}
	
	@Override
	public void viewingredients() {
		System.out.println(super.getRecipeName());
	}

}
