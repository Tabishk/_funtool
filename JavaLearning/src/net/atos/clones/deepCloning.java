package net.atos.clones;

public class deepCloning {

	public static void main(String[] args) {
		
		Person pObj =new Person(24,"Vishal","Arthamwar");
		Person pObj2=null;
		
		try {
				pObj2=pObj.clone();
		} catch (CloneNotSupportedException e) {
			e.printStackTrace();
		}
		
		System.out.println(pObj2);

	}

}
