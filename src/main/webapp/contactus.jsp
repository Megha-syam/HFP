<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Handloom Global Fashion - Contact Us</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        :root {
            --primary-color: #6a4c93;
            --secondary-color: #8ac4d0;
            --text-color: #333;
            --bg-color: #f4f4f4;
        }

        body, html {
            font-family: 'Poppins', sans-serif;
            background-color: var(--bg-color);
            margin: 0;
            padding: 0;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            display: flex;
            width: 900px;
            height: 600px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        .contact-form {
            flex: 1;
            background-color: white;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .contact-form h2 {
            color: var(--primary-color);
            margin-bottom: 30px;
            font-weight: 600;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group input, .input-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        .input-group input:focus, .input-group textarea:focus {
            border-color: var(--primary-color);
            outline: none;
        }

        .input-group textarea {
            height: 120px;
            resize: vertical;
        }

        .submit-btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #5a3d7a;
        }

        .image-container {
            flex: 1;
             background-color: #f8e5d8;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 40px;
            position: relative;
            overflow: hidden;
        }

        .textile-pattern {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: 
                linear-gradient(45deg, var(--secondary-color) 25%, transparent 25%),
                linear-gradient(-45deg, var(--secondary-color) 25%, transparent 25%),
                linear-gradient(45deg, transparent 75%, var(--secondary-color) 75%),
                linear-gradient(-45deg, transparent 75%, var(--secondary-color) 75%);
            background-size: 20px 20px;
            opacity: 0.3;
            animation: movePattern 20s linear infinite;
        }

        @keyframes movePattern {
            0% { background-position: 0 0, 10px 0, 10px -10px, 0 10px; }
            100% { background-position: 20px 20px, 30px 20px, 30px 10px, 20px 30px; }
        }

        .contact-info {
            position: relative;
            z-index: 1;
            color: var(--primary-color);
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .contact-info h3 {
            margin-top: 0;
            color: var(--primary-color);
        }

        .contact-info p {
            margin: 10px 0;
        }

        .handloom-icon {
            width: 100px;
            height: 100px;
            background-color: var(--primary-color);
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
            align-self: center;
        }

        .handloom-icon::before,
        .handloom-icon::after {
            content: '';
            position: absolute;
            background-color: white;
        }

        .handloom-icon::before {
            width: 60px;
            height: 10px;
        }

        .handloom-icon::after {
            width: 10px;
            height: 60px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="contact-form">
            <h2>Contact Handloom Global Fashion</h2>
            <form action="contact" method="post">
                <div class="input-group">
                    <input type="text" name="name" placeholder="Your Name" required>
                </div>
                <div class="input-group">
                    <input type="email" name="email" placeholder="Your Email" required>
                </div>
                <div class="input-group">
                    <input type="text" name="subject" placeholder="Subject" required>
                </div>
                <div class="input-group">
                    <textarea name="message" placeholder="Your Message" required></textarea>
                </div>
                <button type="submit" class="submit-btn">Send Message</button>
            </form>
        </div>
        <div class="image-container">
            <div class="textile-pattern"></div>
            <div class="handloom-icon"></div>
            <div class="contact-info">
                <h3>Get in Touch</h3>
                <p>Email: info@handloomglobalfashion.com</p>
                <p>Phone: +1 (555) 123-4567</p>
                <p>Address: 123 Weaver's Lane, Textile City, TC 12345</p>
            </div>
        </div>
    </div>
</body>
</html>