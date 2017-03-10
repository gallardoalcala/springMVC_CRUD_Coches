package com.jeromejaglale.domain;

import java.math.BigDecimal;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;

public class Car {
	@NotEmpty
	private String name;
	
	@Min(1000) @Max(5000000)
	private int price;
	private int id;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public void setId(int id){
		this.id = id;
	}
	public int getId(){
		return id;
	}
}
