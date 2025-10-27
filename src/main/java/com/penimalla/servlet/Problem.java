package com.penimalla.servlet;

public class Problem {
    private int id;
    private String issueTitle;
    private String category;
    private String priority;
    private String mobile;
    private String area;
    private String location;
    private String description;
    private String reporter;

    public Problem() {}

    public Problem(int id, String issueTitle, String category, String priority, String mobile, String area, String location, String description, String reporter) {
        this.id = id;
        this.issueTitle = issueTitle;
        this.category = category;
        this.priority = priority;
        this.mobile = mobile;
        this.area = area;
        this.location = location;
        this.description = description;
        this.reporter = reporter;
    }

    public int getId() { return id; }
    public String getIssueTitle() { return issueTitle; }
    public String getCategory() { return category; }
    public String getPriority() { return priority; }
    public String getMobile() { return mobile; }
    public String getArea() { return area; }
    public String getLocation() { return location; }
    public String getDescription() { return description; }
    public String getReporter() { return reporter; }

    public void setId(int id) { this.id = id; }
    public void setIssueTitle(String issueTitle) { this.issueTitle = issueTitle; }
    public void setCategory(String category) { this.category = category; }
    public void setPriority(String priority) { this.priority = priority; }
    public void setMobile(String mobile) { this.mobile = mobile; }
    public void setArea(String area) { this.area = area; }
    public void setLocation(String location) { this.location = location; }
    public void setDescription(String description) { this.description = description; }
    public void setReporter(String reporter) { this.reporter = reporter; }
}
