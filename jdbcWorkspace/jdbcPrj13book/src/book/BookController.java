package book;

import static util.Khutil.sc;

import java.util.List;


public class BookController {
	
	// 메뉴
	public void menu() {
		System.out.println("---- MENU ----");
		System.out.println("1. 도서 등록");
		System.out.println("2. 도서 가격 변경");
		System.out.println("3. 도서 대여하기");
		System.out.println("4. 도서 반납하기");
		System.out.println("5. 도서 삭제");
		System.out.println("6. 도서 상세 조회");
		System.out.println("7. 도서 목록 조회");
		System.out.println("8. 도서 검색 (제목)");
		System.out.println("9. 도서 검색 (장르)");
		System.out.println("10. 도서 검색 (저자)");
		System.out.print("메뉴 번호 입력 : ");
		String num = sc.nextLine();
		
		switch (num) {
		case "1" : insertBook(); break;
		case "2" : editPrice(); break;
		case "3" : rentBook(); break;
		case "4" : returnBook(); break;
		case "5" : deleteBook(); break;
		case "6" : selectBookByNo(); break;
		case "7" : selectBookByAll(); break;
		case "8" : selectBookByTitle(); break;
		case "9" : selectBookByGenre(); break;
		case "10" : selectBookByAuthor(); break;
		default : System.out.println("잘못 입력하였습니다.");
		}
		
	}
	//  작성하기
	public void insertBook() {
		try {
			System.out.println("---- 도서 등록 ----");
			
			// data
			System.out.print("제목 : ");
			String title = sc.nextLine();
			System.out.print("장르 : ");
			String genre = sc.nextLine();
			System.out.print("저자 : ");
			String author = sc.nextLine();
			System.out.print("가격 : ");
			String price = sc.nextLine();
			
			BookVo vo = new BookVo();
			vo.setTitle(title);
			vo.setGenre(genre);
			vo.setAuthor(author);
			vo.setPrice(price);
			
			// service-dao
			BookService service = new BookService();
			int result = service.insertBook(vo);
			
			// result
			if (result == 1) {
				System.out.println("도서 등록 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("도서 등록 실패..");
			e.printStackTrace();
		}
		
	}
	//  수정하기 (가격변경)
	public void editPrice() {
		try {
			System.out.println("---- 도서 가격 수정 ----");
			
			// data
			System.out.print("변경할 도서 번호 : ");
			String no = sc.nextLine();
			System.out.print("변경할 가격 : ");
			String price = sc.nextLine();
			
			BookVo vo = new BookVo();
			vo.setNo(no);
			vo.setPrice(price);
			
			// service
			BookService service = new BookService();
			int result = service.editPrice(vo);
			
			// result 
			if (result == 1) {
				System.out.println("가격 변경 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("가격 변경 실패..");
			e.printStackTrace();
		}
	}
	
	//  대여하기
	public void rentBook() {
		System.out.println("---- 도서 대여하기 ----");
	
	}
	
	//  반납하기
	public void returnBook() {
		System.out.println("---- 도서 반납하기 ----");

		
	}
	
	//  삭제하기
	public void deleteBook() {
		try {
			System.out.println("---- 도서 삭제 ----");
			
			// data
			System.out.print("삭제할 도서 번호 : ");
			String no = sc.nextLine();
			
			// service - dao
			BookService service = new BookService();
			int result = service.deleteBook(no);
			
			// result 
			if (result == 1) {
				System.out.println("도서 삭제 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("도서 삭제 실패..");
			e.printStackTrace();
		}
	}
	
	//  상세조회
	public void selectBookByNo() {
		try {
			System.out.println("---- 도서 상세 조회 ----");
			
			// data
			System.out.print("조회할 도서 번호 : ");
			String no = sc.nextLine();
			
			// service
			BookService service = new BookService();
			BookVo vo = service.selectBookByNo(no);
			
			// result 
			if (vo == null) {
				throw new Exception ("해당 도서가 존재하지 않음");
			}
			
			System.out.println("제목 : " + vo.getTitle());
			System.out.println("장르 : " + vo.getGenre());
			System.out.println("저자 : " + vo.getAuthor());
			System.out.println("가격 : " + vo.getPrice());
			System.out.println("대여가능여부 : " + vo.getRentalYn());
			System.out.println("출판일 : " + vo.getPublicationDate());
			
		} catch (Exception e) {
			System.out.println("상세 조회 실패..");
			e.printStackTrace();
		}
		
	}
	//  목록조회 (최신순)
	public void selectBookByAll() {
		try {
			System.out.println("---- 도서 목록 조회 ----");
			
			// data
			// x
			
			// service
			BookService service = new BookService();
			List<BookVo> voList = service.selectBookByAll();
			
			// result
			for (BookVo vo : voList) {
				System.out.println(vo);
			}
			
		} catch (Exception e) {
			System.out.println("목록 조회 실패..");
			e.printStackTrace();
		}
	}
	
	//  도서 검색 (제목)
	public void selectBookByTitle() {
		try {
			System.out.println("---- 도서 검색 (제목) ----");

			// data
			System.out.print("검색할 도서 제목 : ");
			String title = sc.nextLine();
			
			// service
			BookService service = new BookService();
			List<BookVo> voList = service.selectBookByTitle(title);
			
			System.out.println("NO / 제목 / 장르 / 저자");
			
			// result
			for (BookVo vo : voList) {
				System.out.println(vo.getNo() + " / " + vo.getTitle() + " / " + vo.getGenre() + " / " + vo.getAuthor());
			}
			
		} catch (Exception e) {
			System.out.println("도서 검색 실패..");
			e.printStackTrace();
		}
		
	}
	//  도서 검색 (장르)
	public void selectBookByGenre() {
		
	}
	//  도서 검색 (저자)
	public void selectBookByAuthor() {
		
	}
}
