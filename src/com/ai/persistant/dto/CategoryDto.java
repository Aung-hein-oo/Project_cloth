package com.ai.persistant.dto;

import java.io.Serializable;

public class CategoryDto implements Serializable {
    	
	private int id;
	private String name;
	
	public CategoryDto() {}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}	
	
}