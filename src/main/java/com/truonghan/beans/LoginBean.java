package com.truonghan.beans;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
@SessionScoped
@ManagedBean(name="loginbean")
public class LoginBean {

	private String username;
	private String password;
	private String fullname;
	private int age;
	private List<LoginBean> userlist;
	
	public String validateUser(){
		System.out.println(username);
		System.out.println(password);
		
		if(username == "admin" && password == "admin"){
			
			ExternalContext externalContext = FacesContext.getCurrentInstance().getExternalContext();
			Map<String, Object> sessionMap = externalContext.getSessionMap();
			userlist = new  ArrayList<LoginBean>();
			sessionMap.put("userlist", userlist);
			
			return "welcome";
			}
		else return "login";
	}
	public String  addUser(){
		System.out.println(username);
		System.out.println(password);
		setUserList();
		userlist.add(this);
		return "";
	}
	public String updateUser(){
		setUserList();
		for(LoginBean o: userlist){
			if (o.getUsername().equals(getUsername())){
				o.setPassword(getPassword());
				o.setAge(getAge());
				o.setFullname(getFullname());
			}
		}
		return "";
	}
	
	public String deleteUser(){
		setUserList();
		for(LoginBean o: userlist){
			if (o.getUsername().equals(getUsername())){
				userlist.remove(o);
			}
		}
		return "";
	}
	
	public void setUserList(){
		ExternalContext externalContext = FacesContext.getCurrentInstance().getExternalContext();
		Map<String, Object> sessionMap = externalContext.getSessionMap();
		userlist = (List<LoginBean>)sessionMap.get("userlist");
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public List<LoginBean> getUserlist() {
		return userlist;
	}

	public void setUserlist(List<LoginBean> userlist) {
		this.userlist = userlist;
	}
	
	
	
}
