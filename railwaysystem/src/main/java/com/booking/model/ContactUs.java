package com.booking.model;

public class ContactUs {
    private String fullName;
    private String email;
    private String phone;
    private String subject;
    private String message;
    private String contactMethod;
    private String feedbackType;

    // Constructor
    public ContactUs(String fullName, String email, String phone, String subject, String message, String contactMethod, String feedbackType) {
        this.fullName = fullName;
        this.email = email;
        this.phone = phone;
        this.subject = subject;
        this.message = message;
        this.contactMethod = contactMethod;
        this.feedbackType = feedbackType;
    }

    // Getters and setters
    public String getFullName() { return fullName; }
    public String getEmail() { return email; }
    public String getPhone() { return phone; }
    public String getSubject() { return subject; }
    public String getMessage() { return message; }
    public String getContactMethod() { return contactMethod; }
    public String getFeedbackType() { return feedbackType; }
}
