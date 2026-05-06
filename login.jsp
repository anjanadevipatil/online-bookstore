<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BookNest - Login</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

/* 🌌 GLOSSY BACKGROUND */
body {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: radial-gradient(circle at top, #0f172a, #020617, #000000);
    overflow: hidden;
}

/* ✨ GLITTER EFFECT */
body::before {
    content: "";
    position: fixed;
    width: 100%;
    height: 100%;
    background-image: radial-gradient(rgba(255,255,255,0.08) 1.5px, transparent 1.5px);
    background-size: 50px 50px;
    opacity: 0.6;
    z-index: -1;
}

/* LOGIN BOX */
.login-box {
    width: 380px;
    padding: 40px;
    border-radius: 20px;
    background: rgba(255,255,255,0.06);
    backdrop-filter: blur(18px);
    box-shadow: 0 0 30px rgba(0,0,0,0.8),
                0 0 20px rgba(56,189,248,0.2);
    text-align: center;
    border: 1px solid rgba(255,255,255,0.1);
}

/* LOGO */
.logo {
    font-size: 26px;
    font-weight: bold;
    color: #38bdf8;
    margin-bottom: 20px;
    text-shadow: 0 0 10px #38bdf8;
}

/* INPUTS */
input {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border: none;
    outline: none;
    border-radius: 10px;
    background: rgba(255,255,255,0.08);
    color: white;
}

/* BUTTON */
button {
    width: 100%;
    padding: 12px;
    margin-top: 15px;
    border: none;
    border-radius: 25px;
    background: linear-gradient(135deg, #22c55e, #4ade80);
    color: white;
    font-size: 16px;
    cursor: pointer;
    box-shadow: 0 0 15px rgba(34,197,94,0.4);
    transition: 0.3s;
}

button:hover {
    transform: scale(1.05);
}

/* TEXT */
h2 {
    color: #facc15;
    margin-bottom: 10px;
}

p {
    color: #cbd5e1;
    font-size: 13px;
}
</style>

</head>

<body>

<div class="login-box">

    <div class="logo">📚 BookNest</div>

    <h2>Login</h2>
    <p>Welcome back! Please login to continue</p>

    <input type="text" id="username" placeholder="Enter Username">
    <input type="password" id="password" placeholder="Enter Password">

    <button onclick="login()">Login</button>

</div>

<script>
function login() {
    let user = document.getElementById("username").value;
    let pass = document.getElementById("password").value;

    // Simple validation (you can connect backend later)
    if(user === "" || pass === "") {
        alert("Please fill all fields");
        return;
    }

    // Redirect to home page (index.jsp)
    window.location.href = "<%= request.getContextPath() %>/index.jsp";
}
</script>

</body>
</html>