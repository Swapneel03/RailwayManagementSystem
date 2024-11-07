<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Passengers</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
        }
        .passenger-form {
            padding: 15px;
            background-color: #f1f5f8;
            border-radius: 10px;
            margin-bottom: 15px;
        }
        .passenger-form h4 {
            margin-bottom: 15px;
        }
        .form-error {
            color: red;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center"><i class="fas fa-user-friends"></i> Passenger Details</h2>
    <form id="passengerForm" action="bookTickets" method="post" onsubmit="return validateForm()">
        <!-- Hidden input for passenger count -->
        <input type="hidden" name="passengerCount" id="passengerCount" value="1">

        <!-- Passenger 1 -->
        <div class="passenger-form" id="passenger1">
            <h4>Passenger 1</h4>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label>Gender</label><br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender1" id="male1" value="male" required>
                        <label class="form-check-label" for="male1"><i class="fas fa-male"></i> Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender1" id="female1" value="female">
                        <label class="form-check-label" for="female1"><i class="fas fa-female"></i> Female</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender1" id="other1" value="other">
                        <label class="form-check-label" for="other1"><i class="fas fa-genderless"></i> Other</label>
                    </div>
                </div>
                <div class="form-group col-md-4">
                    <label for="name1">Full Name (As per Gov. ID)</label>
                    <input type="text" class="form-control" id="name1" name="name1" required>
                </div>
                <div class="form-group col-md-4">
                    <label for="age1">Age</label>
                    <input type="number" class="form-control" id="age1" name="age1" required min="1">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="berth1">Berth Preference</label>
                    <select id="berth1" name="berth1" class="form-control" required>
                        <option value="none" selected>No berth</option>
                        <option value="lower">Lower</option>
                        <option value="middle">Middle</option>
                        <option value="upper">Upper</option>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="nationality1">Nationality</label>
                    <select id="nationality1" name="nationality1" class="form-control" required>
                        <option value="India" selected>India</option>
                        <option value="other">Other</option>
                    </select>
                </div>
            </div>
        </div>
        
        <!-- Additional passengers will be added here -->
        <div id="additionalPassengers"></div>

        <!-- Button to add more passengers -->
        <button type="button" class="btn btn-info btn-block" id="addPassengerBtn"><i class="fas fa-plus"></i> Add More Passengers</button>

        <!-- Payment mode selection -->
        <div class="form-group mt-4">
            <label for="paymentMode"><i class="fas fa-credit-card"></i> Payment Mode</label>
            <select class="form-control" id="paymentMode" name="paymentMode" required>
                <option value="" disabled selected>Select Payment Mode</option>
                <option value="credit">Credit Card</option>
                <option value="debit">Debit Card</option>
                <option value="netbanking">Net Banking</option>
            </select>
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-success btn-block"><i class="fas fa-check"></i> Submit</button>
    </form>
</div>

<!-- JavaScript to dynamically add more passengers and validate form -->
<script>
    let passengerCount = 1;
    
    document.getElementById('addPassengerBtn').addEventListener('click', function() {
        passengerCount++;
        document.getElementById('passengerCount').value = passengerCount; // Update the hidden input
        
        let newPassengerForm = `
            <div class="passenger-form" id="passenger${passengerCount}">
                <h4>Passenger ${passengerCount}</h4>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Gender</label><br>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender1" id="male${passengerCount}" value="male" required>
                            <label class="form-check-label" for="male${passengerCount}"><i class="fas fa-male"></i> Male</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender${passengerCount}" id="female${passengerCount}" value="female">
                            <label class="form-check-label" for="female${passengerCount}"><i class="fas fa-female"></i> Female</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender${passengerCount}" id="other${passengerCount}" value="other">
                            <label class="form-check-label" for="other${passengerCount}"><i class="fas fa-genderless"></i> Other</label>
                        </div>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="name${passengerCount}">Full Name (As per Gov. ID)</label>
                        <input type="text" class="form-control" id="name${passengerCount}" name="name${passengerCount}" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="age${passengerCount}">Age</label>
                        <input type="number" class="form-control" id="age${passengerCount}" name="age${passengerCount}" required min="1">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="berth${passengerCount}">Berth Preference</label>
                        <select id="berth${passengerCount}" name="berth${passengerCount}" class="form-control" required>
                            <option value="none" selected>No berth</option>
                            <option value="lower">Lower</option>
                            <option value="middle">Middle</option>
                            <option value="upper">Upper</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="nationality${passengerCount}">Nationality</label>
                        <select id="nationality${passengerCount}" name="nationality${passengerCount}" class="form-control" required>
                            <option value="India" selected>India</option>
                            <option value="other">Other</option>
                        </select>
                    </div>
                </div>
            </div>`;
        
        document.getElementById('additionalPassengers').insertAdjacentHTML('beforeend', newPassengerForm);
    });

    // Form validation (ensures at least one passenger and all fields filled)
    function validateForm() {
        let isValid = true;
        let passengerCount = document.getElementById('passengerCount').value;

        for (let i = 1; i <= passengerCount; i++) {
            let name = document.getElementById(`name${i}`).value;
            let age = document.getElementById(`age${i}`).value;
            if (name.trim() === "" || age === "") {
                alert(`Please fill all the fields for Passenger ${i}`);
                isValid = false;
                break;
            }
        }
        return isValid;
    }
</script>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- Include Bootstrap CSS in the head section of your JSP page -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<footer class="footer bg-light pt-5">
    <div class="container">
        <div class="row">
            <!-- About Section -->
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="font-weight-bold">QuickStart</h5>
                <p>
                    A108 Adam Street<br>
                    New York, NY 535022<br>
                    <strong>Phone:</strong> +1 5589 55488 55<br>
                    <strong>Email:</strong> info@example.com
                </p>
                <div class="social-links">
                    <a href="#" class="me-2"><i class="bi bi-x"></i></a>
                    <a href="#" class="me-2"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="me-2"><i class="bi bi-instagram"></i></a>
                    <a href="#"><i class="bi bi-linkedin"></i></a>
                </div>
            </div>

            <!-- Useful Links -->
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="font-weight-bold">Useful Links</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Terms of service</a></li>
                    <li><a href="#">Privacy policy</a></li>
                </ul>
            </div>

            <!-- Our Services -->
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="font-weight-bold">Our Services</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Web Design</a></li>
                    <li><a href="#">Web Development</a></li>
                    <li><a href="#">Product Management</a></li>
                    <li><a href="#">Marketing</a></li>
                    <li><a href="#">Graphic Design</a></li>
                </ul>
            </div>

            <!-- Newsletter -->
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="font-weight-bold">Our Newsletter</h5>
                <p>Subscribe to our newsletter and receive the latest news about our products and services!</p>
                <form action="#" method="post">
                    <div class="input-group">
                        <input type="email" class="form-control" placeholder="Email">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="submit">Subscribe</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>

        <!-- Copyright Section -->
        <div class="text-center py-4">
            <p>&copy; Copyright <strong>QuickStart</strong>. All Rights Reserved</p>
            <p>Designed by <a href="https://bootstrapmade.com">BootstrapMade</a></p>
        </div>
    </div>
</footer>

<!-- Include Bootstrap JS and its dependencies at the end of the body section -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

