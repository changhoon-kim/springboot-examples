package com.study.springboot.bean;

public class PrinterA implements Printer {

	@Override
	public void print(String message) {
		System.out.println("Print A : " + message);
	}

}
