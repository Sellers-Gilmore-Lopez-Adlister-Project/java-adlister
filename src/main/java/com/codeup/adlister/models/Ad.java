package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private String contact_info;

    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long userId, String title, String description,String contact_info) {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.contact_info = contact_info;
    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long id, long userId, String title, String description, String contact_info) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.contact_info = contact_info;

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setContact_info(String contact_info) {
        this.contact_info = contact_info;
    }

    public String getContact_info() {
        return contact_info;
    }
}
