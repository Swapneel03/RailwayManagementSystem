<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <title>Contact Us</title>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Contact Us</h2>
        <form action="submitContact" method="post">
            <div class="form-group">
                <label for="fullName"><i class="fas fa-user"></i> Full Name:</label>
                <input type="text" class="form-control" id="fullName" name="fullName" required placeholder="Enter your full name">
            </div>

            <div class="form-group">
                <label for="email"><i class="fas fa-envelope"></i> Email Address:</label>
                <input type="email" class="form-control" id="email" name="email" required placeholder="Enter your email address">
            </div>

            <div class="form-group">
                <label for="phone"><i class="fas fa-phone"></i> Phone Number:</label>
                <input type="tel" class="form-control" id="phone" name="phone" required placeholder="Enter your phone number">
            </div>

            <div class="form-group">
                <label for="subject"><i class="fas fa-comment-alt"></i> Subject:</label>
                <input type="text" class="form-control" id="subject" name="subject" required placeholder="Enter the subject of your message">
            </div>

            <div class="form-group">
                <label for="message"><i class="fas fa-pencil-alt"></i> Message:</label>
                <textarea class="form-control" id="message" name="message" rows="5" required placeholder="Type your message here"></textarea>
            </div>

            <div class="form-group">
                <label for="contactMethod"><i class="fas fa-paper-plane"></i> Preferred Contact Method:</label>
                <select class="form-control" id="contactMethod" name="contactMethod">
                    <option value="email">Email</option>
                    <option value="phone">Phone</option>
                </select>
            </div>

            <div class="form-group">
                <label for="feedbackType"><i class="fas fa-list-alt"></i> Feedback Type:</label>
                <select class="form-control" id="feedbackType" name="feedbackType">
                    <option value="general">General Inquiry</option>
                    <option value="technical">Technical Support</option>
                    <option value="booking">Booking Issue</option>
                    <option value="other">Other</option>
                </select>
            </div>

            <div class="form-group">
                <label for="attachment"><i class="fas fa-file-upload"></i> Attach a file (optional):</label>
                <input type="file" class="form-control-file" id="attachment" name="attachment">
            </div>

            <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-paper-plane"></i> Send Message</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<!-- Include Bootstrap CSS in the head section of your JSP page -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<footer class="footer bg-light pt-5">
    <div class="container">
        <div class="row">
            <!-- About Section -->
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="font-weight-bold">Rail on your tips</h5>
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
            <p>&copy; Copyright <strong>Rail on your tips</strong>. All Rights Reserved</p>
            <p>Designed by <a href="https://bootstrapmade.com">BootstrapMade</a></p>
        </div>
    </div>
</footer>

<!-- Include Bootstrap JS and its dependencies at the end of the body section -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
