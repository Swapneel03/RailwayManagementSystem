<!-- bookingConfirmation.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Booking Confirmation</title>
</head>
<body>
    <h2>Booking Confirmation</h2>
    <p>Your tickets have been confirmed!</p>
    <p>You will be redirected to the home page shortly...</p>
    <script>
        setTimeout(() => {
            window.location.href = "index.jsp"; // Redirect to your home page
        }, 3000); // Redirects after 3 seconds
    </script>
</body>
</html>
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
