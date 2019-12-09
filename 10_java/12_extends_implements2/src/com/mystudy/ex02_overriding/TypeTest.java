package com.mystudy.ex02_overriding;

public class TypeTest {

	public static void main(String[] args) {
		Animal an = new Animal();
		Cat cat = new Cat();
		Dog dog = new Dog();
		Pig pig = new Pig();
		
		an.eat();
		an.sleep();
		
		cat.sound();
		dog.sound();
		pig.sound();
		
		System.out.println("---- sound() 호출 ----");
		sound(an);
		sound(cat);
		sound(dog);
		sound(pig);
	}
	
	private static void sound(Animal animal) {
		animal.sound();
	}

/*
	//메소드 오버로딩(overloading)
	private static void sound(Cat cat) {
		cat.sound();
	}
	private static void sound(Dog dog) {
		dog.sound();
	}
	private static void sound(Pig pig) {
		pig.sound();
	}	
*/
	
/*
	//상위클래스 타입으로 전달받아 저장객체 찾은 후 동작
	static void sound(Animal animal) {
		System.out.println(">>> sound(Animal) 실행");
		//instanceof 사용 - 타입확인 후 해당 타입의 sound() 메소드 호출
		//Cat, Dog 타입에 대한 타입체크 후 sound() 호출
		if (animal instanceof Cat) {
			((Cat) animal).sound();
		} else if (animal instanceof Dog) {
			((Dog) animal).sound();
		} else if (animal instanceof Pig) {
			((Pig) animal).sound();
		}
		
	}
*/

}









