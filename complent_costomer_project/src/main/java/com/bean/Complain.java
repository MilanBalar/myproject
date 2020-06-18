package com.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "complain_details3333")
public class Complain 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int complain_id;
	private String cemail;
	private String date;
	private String complain;
	private String description;
	private String remark;
	
	@ManyToOne
	@JoinColumn(name="id")
	private Client client;
	
	
	
	
	public String getCemail() {
		return cemail;
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public int getComplain_id() {
		return complain_id;
	}
	public void setComplain_id(int complain_id) {
		this.complain_id = complain_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getComplain() {
		return complain;
	}
	public void setComplain(String complain) {
		this.complain = complain;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
	
	

}
