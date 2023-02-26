package com.community_portal.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="city")
public class Nationality {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long cityID;
	
	private String cityName;
	private String CountryName;
	public Nationality() {}
	public Nationality(long cityId, String cityName, String countryName) {
		super();
		this.cityID = cityId;
		this.cityName = cityName;
		CountryName = countryName;
	}
	
	public long getCityId() {
		return cityID;
	}
	public void setCityId(long cityId) {
		this.cityID = cityId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCountryName() {
		return CountryName;
	}
	public void setCountryName(String countryName) {
		CountryName = countryName;
	}
	
}
