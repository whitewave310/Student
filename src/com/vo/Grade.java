package com.vo;

public class Grade {
	private Integer id;
	private Integer number;
	private String name;
	private Integer ugrade1;
	private Integer ugrade2;
	private Integer ugrade3;
	private Integer ugrade4;
	private Integer egrade1;
	private Integer egrade2;
	private Integer grade;
	private Integer tgrade;
	
	public Grade(){}
	public Grade(Integer number, String name, Integer ugrade1, Integer ugrade2,
			Integer ugrade3, Integer ugrade4, Integer egrade1, Integer egrade2,
			Integer grade, Integer tgrade) {
		super();
		this.number = number;
		this.name = name;
		this.ugrade1 = ugrade1;
		this.ugrade2 = ugrade2;
		this.ugrade3 = ugrade3;
		this.ugrade4 = ugrade4;
		this.egrade1 = egrade1;
		this.egrade2 = egrade2;
		this.grade = grade;
		this.tgrade = tgrade;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getUgrade1() {
		return ugrade1;
	}
	public void setUgrade1(Integer ugrade1) {
		this.ugrade1 = ugrade1;
	}
	public Integer getUgrade2() {
		return ugrade2;
	}
	public void setUgrade2(Integer ugrade2) {
		this.ugrade2 = ugrade2;
	}
	public Integer getUgrade3() {
		return ugrade3;
	}
	public void setUgrade3(Integer ugrade3) {
		this.ugrade3 = ugrade3;
	}
	public Integer getUgrade4() {
		return ugrade4;
	}
	public void setUgrade4(Integer ugrade4) {
		this.ugrade4 = ugrade4;
	}
	public Integer getEgrade1() {
		return egrade1;
	}
	public void setEgrade1(Integer egrade1) {
		this.egrade1 = egrade1;
	}
	public Integer getEgrade2() {
		return egrade2;
	}
	public void setEgrade2(Integer egrade2) {
		this.egrade2 = egrade2;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public Integer getTgrade() {
		return tgrade;
	}
	public void setTgrade(Integer tgrade) {
		this.tgrade = tgrade;
	}
	
}
