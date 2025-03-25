package kh2;

public class Main {

	public static void main(String[] args) {
			
		Car[] carArr = new Car[5];
				
		//OilCar oilArr[] = new OilCar[3];
		
		carArr[0] = new OilCar();
		carArr[0].name = "k5";
		//carArr[0].기름연비 = 100;
		// 동적바인딩 : 실행되었을 때 바인딩 
		// 정적바인딩 : 실행되기 전 바인딩
		
		carArr[1] = new OilCar();
		carArr[1].name = "k59";
		
		carArr[2] = new OilCar();
		carArr[2].name = "소나타";
		
		//ElecCar[] elecCarArr = new ElecCar[2];
		
		carArr[3] = new ElecCar();
		carArr[3].name = "elec1";
		//carArr[0].전기연비 = 100;
		
		carArr[4] = new ElecCar();
		carArr[4].name = "elec2";
		
		for(int i=0; i<carArr.length; i++) {
			System.out.println(carArr[i].name);
		}
		
	}

}
