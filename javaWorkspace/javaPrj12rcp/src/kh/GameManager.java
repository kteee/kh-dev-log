package kh;

import java.util.Scanner;

public class GameManager {   
	
	// method 
	public void rcpGameStart() {   // method 이름은 카멜케이스로 작성
	
		System.out.println("=== 가위 바위 보 ===");
		
		Scanner sc = new Scanner(System.in);
		int random = (int) (Math.random() * 3 + 1);  // 랜덤 값의 범위를 1~3으로 설정
		String com;
		if (random == 1) {
			com = "가위";
		}
		else if (random == 2) {
			com = "바위";
		}
		else {
			com = "보";
		}
		
		while(true) {
			String user = sc.nextLine();
			System.out.println("당신 : " + user);
			System.out.println("컴퓨터 : " + com);
			
			if (com.equals(user)) {
				System.out.println("무승부");
				break;
			}
			else if (com.equals("가위") && user.equals("바위")) {
				System.out.println("당신이 이겼습니다.");
				break;
			}
			else if (com.equals("가위") && user.equals("보")) {
				System.out.println("당신이 졌습니다.");
				break;
			}
			else if (com.equals("바위") && user.equals("보")) {
				System.out.println("당신이 이겼습니다.");
				break;
			}
			else if (com.equals("바위") && user.equals("가위")) {
				System.out.println("당신이 졌습니다.");
				break;
			}
			else if (com.equals("보") && user.equals("가위")) {
				System.out.println("당신이 이겼습니다.");
				break;
			}
			else if (com.equals("보") && user.equals("바위")) {
				System.out.println("당신이 졌습니다.");
				break;
			}
			else {
				System.out.println("가위, 바위, 보 중 하나를 입력하세요.");
			}
		}
		
	}

}
