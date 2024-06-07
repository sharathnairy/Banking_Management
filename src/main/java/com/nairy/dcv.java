package com.nairy;

public class dcv {
public static void main(String[] args) throws Exception {
	login_check_cust c= new login_check_cust();
	String ac="A001";
	if(c.account_check(ac)) {
		System.out.println("hlo");
	}
}
}
