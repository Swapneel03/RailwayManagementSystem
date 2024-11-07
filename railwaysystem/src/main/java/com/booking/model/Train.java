package com.booking.model;

public class Train {
    private int trainNumber;
    private String trainName;
    private int fromStation; // Consider changing this to String if you want to display station names
    private int toStation;   // Consider changing this to String if you want to display station names
    private String travelDate;
    private String departureTime;
    private String arrivalTime;

    // Getters and Setters
    public int getTrainNumber() {
        return trainNumber;
    }
    public void setTrainNumber(int trainNumber) {
        this.trainNumber = trainNumber;
    }
    public String getTrainName() {
        return trainName;
    }
    public void setTrainName(String trainName) {
        this.trainName = trainName;
    }
    public int getFromStation() {
        return fromStation;
    }
    public void setFromStation(int fromStation) {
        this.fromStation = fromStation;
    }
    public int getToStation() {
        return toStation;
    }
    public void setToStation(int toStation) {
        this.toStation = toStation;
    }
    public String getTravelDate() {
        return travelDate;
    }
    public void setTravelDate(String travelDate) {
        this.travelDate = travelDate;
    }
    public String getDepartureTime() {
        return departureTime;
    }
    public void setDepartureTime(String departureTime) {
        this.departureTime = departureTime;
    }
    public String getArrivalTime() {
        return arrivalTime;
    }
    public void setArrivalTime(String arrivalTime) {
        this.arrivalTime = arrivalTime;
    }
}
