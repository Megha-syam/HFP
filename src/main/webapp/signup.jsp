<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Handloom Global Fashion - Register</title>
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
            overflow: hidden;
        }

        .container {
            display: flex;
            width: 900px;
            height: 600px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
            position: relative;
        }

        .register-form {
            flex: 1;
            background-color: white;
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            z-index: 2;
            position: relative;
        }

        .register-form h2 {
            color: var(--primary-color);
            margin-bottom: 30px;
            font-weight: 600;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group input, .input-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        .input-group input:focus, .input-group select:focus {
            border-color: var(--primary-color);
            outline: none;
        }

        .register-btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .register-btn:hover {
            background-color: #5a3d7a;
        }

        .image-container {
            flex: 1;
            background: linear-gradient(120deg, #f0e1d1, #d6b5e2);
            position: relative;
            overflow: hidden;
        }

        .fabric-pattern {
            position: absolute;
            width: 200%;
            height: 200%;
            background-image: 
                linear-gradient(45deg, rgba(255, 255, 255, 0.2) 25%, transparent 25%),
                linear-gradient(-45deg, rgba(255, 255, 255, 0.2) 25%, transparent 25%),
                linear-gradient(45deg, transparent 75%, rgba(255, 255, 255, 0.2) 75%),
                linear-gradient(-45deg, transparent 75%, rgba(255, 255, 255, 0.2) 75%);
            background-size: 40px 40px;
            animation: movePattern 20s linear infinite;
            z-index: 1;
        }

        @keyframes movePattern {
            0% { background-position: 0 0; }
            100% { background-position: 100% 100%; }
        }

        .thread {
            position: absolute;
            width: 4px;
            height: 100%;
            background-color: rgba(255, 255, 255, 0.6);
            animation: weave 3s linear infinite;
        }

        .thread:nth-child(1) { left: 25%; animation-delay: -0.5s; }
        .thread:nth-child(2) { left: 50%; animation-delay: -1s; }
        .thread:nth-child(3) { left: 75%; animation-delay: -1.5s; }
        .thread:nth-child(4) { left: 10%; animation-delay: -2s; }

        @keyframes weave {
            0%, 100% { transform: translateY(-100%); }
            50% { transform: translateY(100%); }
        }

        .fabric {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1504461252303-4407c8f84a15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&q=80&w=400') no-repeat center center;
            background-size: cover;
            opacity: 0.5;
            animation: fabricWave 5s ease-in-out infinite;
            z-index: 0;
        }

        @keyframes fabricWave {
            0% { transform: translateY(0); }
            50% { transform: translateY(-5px); }
            100% { transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="register-form">
            <h2>Join Threads of Tradition</h2>
            <form action="register" method="post">
                <div class="input-group">
                    <input type="text" name="username" placeholder="Username" required>
                </div>
                <div class="input-group">
                    <input type="email" name="email" placeholder="Email" required>
                </div>
                <div class="input-group">
                    <input type="password" name="password" placeholder="Password" required>
                </div>
                <div class="input-group">
                    <input type="password" name="confirm_password" placeholder="Confirm Password" required>
                </div>
                <div class="input-group">
                    <select name="account_type" required>
                        <option value="" disabled selected>Select Account Type</option>
                        <option value="artisan">Artisan</option>
                        <option value="admin">Admin</option>
                        <option value="global_marketer">Global Marketer</option>
                    </select>
                </div>
                <button type="submit" class="register-btn">Register</button>
            </form>
        </div>
        <div class="image-container">
            <div class="fabric-pattern"></div>
            <div class="thread"></div>
            <div class="thread"></div>
            <div class="thread"></div>
            <div class="thread"></div>
            <div class="fabric"></div>
        </div>
    </div>
</body>
</html>