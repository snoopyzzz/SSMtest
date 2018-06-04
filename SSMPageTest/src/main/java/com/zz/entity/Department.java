package com.zz.entity;

public class Department {
    private Integer id;

    private String name;

    private String address;
    
    @Override
	public String toString() {
		return "Department [id=" + id + ", name=" + name + ", address=" + address + "]";
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }
}