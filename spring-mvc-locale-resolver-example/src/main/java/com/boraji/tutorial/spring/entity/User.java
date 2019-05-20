/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.boraji.tutorial.spring.entity;

/**
 *
 * @author hd
 */
public class User {

    private String name;
    private String firstName;
    private String lastName;
    private String nickName;
    private String modernName;
    private String section;
    private String address;

    public User(String names, String first, String last, String nick,
            String modren, String section, String address) {
        this.name = names;
        this.firstName = first;
        this.lastName = last;
        this.nickName = nick;
        this.modernName = modren;
        this.section = section;
        this.address = address;

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getModernName() {
        return modernName;
    }

    public void setModernName(String modernName) {
        this.modernName = modernName;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

}
