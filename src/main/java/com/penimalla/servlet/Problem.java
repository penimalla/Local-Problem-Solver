package com.penimalla.servlet;

public class Problem {
    private int id;
    private String description;
    private String location;
    private String status;

    public Problem() {}

    public Problem(int id, String description, String location, String status) {
        this.id = id;
        this.description = description;
        this.location = location;
        this.status = status;
    }

    public int getId() { return id; }
    public String getDescription() { return description; }
    public String getLocation() { return location; }
    public String getStatus() { return status; }

    public void setId(int id) { this.id = id; }
    public void setDescription(String description) { this.description = description; }
    public void setLocation(String location) { this.location = location; }
    public void setStatus(String status) { this.status = status; }
}
