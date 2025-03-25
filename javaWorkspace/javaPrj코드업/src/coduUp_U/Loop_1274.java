package coduUp_U;

import java.util.Scanner;

public class Loop_1274 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in); 
		int n = sc.nextInt();
		
		int count=0;
		for(int i=2; i<=n/2; i++) {  // 절반 넘어가면 검사할 필요 없음 ==> /2 
			if(n%i == 0) {
				count++;
				break;               // 소수판별되면 바로 브레이크로 반복문 탈출
			}
		}
		if (count==1) {
			System.out.println("소수");
		}
		else {
			System.out.println("소수아님");
		}
		//에라토스테네스의 체 (1~n 까지의 소수 구하기)
	}
} 