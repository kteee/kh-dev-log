package movie;

import static util.Util.*;

import java.util.List;

import main.Main;

public class MovieController {

	//메뉴
	public void menu() {
		while (true) {
			if (Main.loginedMember != null) {
				if (Main.loginedMember.getId().contains("system")) {
					adminMenu();
					break;
				}
				else {
					memberMenu();
					break;
				}
			}
		}
	}
	
	// 관리자 메뉴
	public void adminMenu() {
		while(true) {
			System.out.println("------ ADMIN MOVIE------");
			System.out.println("1. 영화 등록");
			System.out.println("2. 영화 상태 변경");
			System.out.println("3. 영화 삭제");
			System.out.println("4. 영화 목록 조회");
			System.out.println("5. 영화 상세 조회");
			System.out.println("9. 이전 메뉴로 이동");
			System.out.print("메뉴 번호 입력 : ");
			String num = sc.nextLine();
			
			switch(num) {
			case "1" : enrollMovie(); break;
			case "2" : updateShowStatus(); break;
			case "3" : deleteMovie(); break;
			case "4" : selectMovieAll(); break;
			case "5" : selectMovieByNo(); break;
			case "9" : return;
			default : System.out.println("잘못 입력하였습니다.");
			}
		}
	}
	
	// 회원 메뉴
	public void memberMenu() {
		while(true) {
			System.out.println("------ MEMBER MOVIE------");;
			System.out.println("1. 영화 목록 조회");
			System.out.println("2. 영화 상세 조회");
			System.out.println("3. 영화 예매하기");
			System.out.println("9. 이전 메뉴로 이동");
			System.out.print("메뉴 번호 입력 : ");
			String num = sc.nextLine();
			
			switch(num) {
			case "1" : selectMovieAll(); break;
			case "2" : selectMovieByNo(); break;
			case "3" : reservation(); break;
			case "9" : return;
			default : System.out.println("잘못 입력하였습니다.");
			}
		}
	}
	
	// 영화 등록
	public void enrollMovie() {
		try {
			System.out.println("---- 영화 등록 ----");
			
			// data
			System.out.print("제목 : ");
			String title = sc.nextLine();
			System.out.print("장르 : ");
			String genre = sc.nextLine();
			System.out.print("상영일자 (YYYYMMDD) : ");
			String showDate = sc.nextLine();
			System.out.print("좌석 수 : ");
			String seatCount = sc.nextLine();
			
			MovieVo vo = new MovieVo();
			vo.setTitle(title);
			vo.setGenre(genre);
			vo.setShowDate(showDate);
			vo.setSeatCount(seatCount);
			
			// service
			MovieService service = new MovieService();
			int result = service.enrollMovie(vo);
			
			// result 
			if (result == 1) {
				System.out.println("영화 등록 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("영화 등록 실패..");
			System.out.println(e.getMessage());
		}
	}
	
	// 영화 상영상태 변경
	public void updateShowStatus() {
		try {
			System.out.println("---- 영화 상태 변경 ----");
			
			// data 
			System.out.print("변경할 영화 번호 : ");
			String no = sc.nextLine();
			System.out.print("상태 수정 [1-상영예정, 2-상영종료] : ") ;
			String status = sc.nextLine();
			
			// service
			MovieService service = new MovieService();
			int result = service.updateShowStatus(no, status);
			
			// result
			if (result == 1) {
				System.out.println("상영상태 변경 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
			
		} catch (Exception e) {
			System.out.println("상영상태 변경 실패..");
			System.out.println(e.getMessage());
		}
			
	}
	
	// 영화 삭제
	public void deleteMovie() {
		try {
			System.out.println("---- 영화 삭제 ----");
			
			// data 
			System.out.print("삭제할 영화 번호 : ");
			String no = sc.nextLine();
			
			// service
			MovieService service = new MovieService();
			int result = service.deleteMovie(no);
			
			// result
			if (result == 1) {
				System.out.println("영화 삭제 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
		} catch (Exception e) {
			System.out.println("영화 삭제 실패..");
			System.out.println(e.getMessage());
		}
	}
	
	// 영화 목록 조회
	public void selectMovieAll() {
		try {
			System.out.println("---- 영화 목록 조회 ----");
			System.out.println("NO / 상영상태 / 상영일자 / 제목 / 장르 / 남은좌석수 / 예매가능여부");
			
			// service
			MovieService service = new MovieService();
			List<MovieVo> voList = service.selectMovieAll();
			
			// result
			for (MovieVo vo : voList) {
				System.out.print(vo.getNo());
				System.out.print(" | ");
				System.out.print(vo.getShowStatus());
				System.out.print(" | ");
				System.out.print(vo.getShowDate());
				System.out.print(" | ");
				System.out.print(vo.getTitle());
				System.out.print(" | ");
				System.out.print(vo.getGenre());
				System.out.print(" | ");
				System.out.print(vo.getRemainSeat());
				System.out.print(" | ");
				System.out.print(vo.getReservableYn());
				System.out.println("");
			}
		} catch(Exception e) {
			System.out.println("영화 목록 조회 실패..");
			System.out.println(e.getMessage());
		}
	}
	
	// 영화 상세 조회
	public void selectMovieByNo() {
		try {
			System.out.println("---- 영화 상세 조회 ----");
			
			// data 
			System.out.print("조회할 영화 번호 : ");
			String no = sc.nextLine();
			
			// service
			MovieService service = new MovieService();
			MovieVo vo = service.selectMovieByNo(no);
			
			// result
			System.out.println("------------------------");
			System.out.println("번호: " + vo.getNo());
			System.out.println("제목 : " + vo.getTitle());
			System.out.println("장르 : " + vo.getGenre());
			System.out.println("상영상태 : " + vo.getShowStatus());
			System.out.println("상영일자 : " + vo.getShowDate());
			System.out.println("총좌석수 : " + vo.getSeatCount());
			System.out.println("예매수 : " + vo.getReservationCount());
			System.out.println("남은좌석수 : " + vo.getRemainSeat());
			System.out.println("예매가능여부 : " + vo.getReservableYn());
			System.out.println("------------------------");
			
		} catch (Exception e) {
			System.out.println("상세 조회 실패..");
			System.out.println(e.getMessage());
		}
		
	}
	

	// 영화 예매하기
	public void reservation() {
		try {
			System.out.println("---- 영화 예매 ----");
			
			// data 
			System.out.print("예매할 영화 번호 : ");
			String no = sc.nextLine();
			
			// service
			MovieService service = new MovieService();
			int result = service.reservation(no);
			
			// result 
			if (result == 1) {
				System.out.println("영화 예매 성공!");
			}
			else {
				throw new Exception("result 값이 1이 아닙니다.");
			}
			
		} catch (Exception e) {
			System.out.println("영화 예매 실패..");
			// System.out.println(e.getMessage());
		}
	}
	
}
