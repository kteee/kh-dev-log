package kh;

public class Main03 {
	
	public static void main(String[] args) {
	
		// 배열
		int[] x = new int[3];
		x[0] = 10;
		x[1] = 20;
		x[2] = 30;
		
		// 다차원 배열 (배열 안의 배열 안의 배열...)
		int[][] y = new int[3][3];  // 3x3 2차원 배열 
		y[0][0] = 10;
		y[0][1] = 20;
		y[0][2] = 30;
		y[1][0] = 40;
		y[1][1] = 50;
		y[1][2] = 60;
		y[2][0] = 70;
		y[2][1] = 80;
		y[2][2] = 90;
		
		// 다차원 배열 각각 설정
		int[][] a = new int[3][];
		a[0] = new int[3];
		a[1] = new int[1];
		a[2] = new int[2];
		
		a[2][0] = 7;
	}
}
