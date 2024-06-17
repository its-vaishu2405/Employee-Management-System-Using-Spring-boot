package com.project.maydemo.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String Name;
	private String Phone;
	private String email;
	private String Password;
	private String Cpassword;
	
	
	public Employee(int id, String name, String phone, String email, String password, String cpassword) {
		super();
		this.id = id;
		Name = name;
		Phone = phone;
		this.email = email;
		Password = password;
		Cpassword = cpassword;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getCpassword() {
		return Cpassword;
	}
	public void setCpassword(String cpassword) {
		Cpassword = cpassword;
	}


	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return "Employee [id=" + id + ", Name=" + Name + ", Phone=" + Phone + ", Email=" + email + ", Password="
				+ Password + ", Cpassword=" + Cpassword + "]";
	}
	
	
	
	
}