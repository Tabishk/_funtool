package net.atos.clones;

public class Person implements Cloneable {

    private int age;
    private String firstName;
    private String lastName;

    public Person() {
	super();
    }

    public Person(int age, String firstName, String lastName) {
	super();
	this.age = age;
	this.firstName = firstName;
	this.lastName = lastName;
    }

    /// Shallow Cloning
    // @Override
    // protected Object clone() throws CloneNotSupportedException
    // {
    // return super.clone();
    // }

    // Deep Copying
    @Override
    protected Person clone() throws CloneNotSupportedException {
	Person tempPerson = (Person) super.clone();
	tempPerson.age = this.age;
	tempPerson.firstName = new String(this.getFirstName());
	tempPerson.lastName = new String(this.getLastName());

	//// Will get cleared after Strings.

	// tempPerson.setAge(this.getAge());
	// tempPerson.setFirstName(this.getFirstName());
	// tempPerson.setLastName(this.getLastName());

	return tempPerson;

    }

    public int getAge() {
	return age;
    }

    public void setAge(int age) {
	this.age = age;
    }

    public String getFirstName() {
	return firstName;
    }

    public void setFirstName(String firstName) {
	this.firstName = firstName;
    }

    public String getLastName() {
	return lastName;
    }

    public void setLastName(String lastName) {
	this.lastName = lastName;
    }

    @Override
    public String toString() {
	return "Person [age=" + age + ", firstName=" + firstName + ", lastName=" + lastName + "]";
    }

}
