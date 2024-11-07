<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>User Registration</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <script>
        // Session timeout duration in seconds (3 minutes)
        let sessionDuration = 3 * 60; // 3 minutes in seconds

        function startCountdown() {
            let countdownElement = document.getElementById('countdown');
            let countdownTimer = setInterval(() => {
                // Calculate minutes and seconds
                let minutes = Math.floor(sessionDuration / 60);
                let seconds = sessionDuration % 60;

                // Format the time
                countdownElement.innerHTML = `Session will expire in: ${minutes}:${seconds < 10 ? '0' + seconds : seconds}`;

                // Decrement the session duration
                sessionDuration--;

                // If session time is over, stop the countdown and redirect
                if (sessionDuration < 0) {
                    clearInterval(countdownTimer);
                    alert("Session expired. Please log in again.");
                    window.location.href = "login.jsp"; // Redirect to login page
                }
            }, 1000);
        }

        // Start the countdown on page load
        window.onload = startCountdown;
    </script>
</head>
<body style="background-color: #f4f4f4;">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-header text-center bg-primary text-white">
                    <h3><i class="fas fa-user-plus"></i> Register for Rail on Your Tips</h3>
                    <div id="countdown" class="mt-2"></div> <!-- Countdown timer -->
                </div>
                <div class="card-body">
                    <form action="UserServlet" method="post">
                        <div class="form-group">
                            <label for="username"><i class="fas fa-user"></i> Username</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
                        </div>
                        <div class="form-group">
                            <label for="password"><i class="fas fa-lock"></i> Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="fas fa-envelope"></i> Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                        </div>
                        <div class="form-group">
                            <label for="phonenumber"><i class="fas fa-phone"></i> Phone Number</label>
                            <input type="tel" class="form-control" id="phonenumber" name="phonenumber" placeholder="Enter your phone number" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-user-check"></i> Register Now</button>
                    </form>
                </div>
                <div class="card-footer text-center">
                    <small class="text-muted">Already have an account? <a href="login.jsp" class="text-primary">Login here</a></small>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="footer bg-dark text-light pt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="font-weight-bold text-primary">Rail on Your Tips</h5>
                <p>A108 Adam Street<br>New York, NY 535022<br><strong>Phone:</strong> +1 5589 55488 55<br><strong>Email:</strong> info@example.com</p>
                <div class="social-links">
                    <a href="#" class="text-light me-3"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="text-light me-3"><i class="fab fa-facebook"></i></a>
                    <a href="#" class="text-light me-3"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="text-light"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="font-weight-bold">Useful Links</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-light">Home</a></li>
                    <li><a href="#" class="text-light">About Us</a></li>
                    <li><a href="#" class="text-light">Services</a></li>
                    <li><a href="#" class="text-light">Terms of Service</a></li>
                    <li><a href="#" class="text-light">Privacy Policy</a></li>
                </ul>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="font-weight-bold">Our Services</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-light">Web Design</a></li>
                    <li><a href="#" class="text-light">Web Development</a></li>
                    <li><a href="#" class="text-light">Product Management</a></li>
                    <li><a href="#" class="text-light">Marketing</a></li>
                    <li><a href="#" class="text-light">Graphic Design</a></li>
                </ul>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="font-weight-bold">Our Newsletter</h5>
                <p>Subscribe to our newsletter and receive the latest news about our products and services!</p>
                <form action="#" method="post">
                    <div class="input-group">
                        <input type="email" class="form-control" placeholder="Email" aria-label="Email">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="submit">Subscribe</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="bg-primary text-center py-3">
        <p class="mb-0">&copy; 2024 Rail on Your Tips. All Rights Reserved | Designed by <a href="https://bootstrapmade.com" class="text-light">BootstrapMade</a></p>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

