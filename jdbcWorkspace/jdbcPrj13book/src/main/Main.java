package main;

import book.BookController;

import java.sql.Connection;

public class Main {

	public static void main(String[] args) throws Exception {

		BookController bc = new BookController();

		while(true) {
			bc.menu();
		}
		
		
	}

}
