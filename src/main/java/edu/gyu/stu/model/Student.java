package edu.gyu.stu.model;

import java.sql.Date;

public class Student {
    private int id;
    private String name;
    private String gender;
    //注意是sql.Date而不是util.Date,否则BeanUtils.populate
    // 会出现 DateConverter does not support default String to 'Date' conversion
    private Date birthday;
    private String major;

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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", birthday=" + birthday +
                ", major='" + major + '\'' +
                '}';
    }
}
