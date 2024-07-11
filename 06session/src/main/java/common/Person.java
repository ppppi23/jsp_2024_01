package common;

public class Person {
	private String name;
	private int age;
  
	public Person() { }
	public Person(String name, int age) {
		// super();
		this.name = name;
		this.age  = age;
	}
	// getter
  public String getName() {
  	return this.name;
  }
  public int getAge() {
  	return this.age;
  }
	
	// setter
  public void setName() {
  	this.name = name;
  }
  public void setAge() {
  	this.age = age;
  }
	
  @Override
  public String toString() {
  	return String.format("%s, %d", this.name, this.age);
  }
}





