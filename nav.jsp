<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BookNest Header</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background-color: #0b1220;
}

/* HEADER */
.header {
    width: 100%;
    padding: 15px 50px;
    background: linear-gradient(to right, #0b1220, #0f1c35);
    display: flex;
    justify-content: space-between;
    align-items: center;
}

/* LOGO */
.logo {
    display: flex;
    align-items: center;
    gap: 10px;
    color: white;
    font-size: 20px;
    font-weight: bold;
}

/* NAV */
.nav {
    display: flex;
    gap: 30px;
    align-items: center;
}

.nav a {
    text-decoration: none;
    color: #cbd5e1;
    font-size: 16px;
    position: relative;
    display: flex;
    align-items: center;
    gap: 5px;
}

.nav a.active,
.nav a:hover {
    color: #00d4aa;
}

.nav a.active::after {
    content: "";
    position: absolute;
    bottom: -6px;
    left: 0;
    width: 100%;
    height: 2px;
    background-color: #00d4aa;
}

/* BUTTONS */
.right-section {
    display: flex;
    gap: 15px;
}

.btn {
    padding: 8px 18px;
    border-radius: 6px;
    border: 1px solid #00d4aa;
    color: white;
    background: transparent;
    text-decoration: none;
    font-size: 14px;
}

.btn:hover {
    background: #00d4aa;
    color: black;
}

/* ICON STYLE */
.icon {
    width: 22px;
    height: 22px;
    stroke: #00d4aa;
}
</style>

</head>

<body>

<header class="header">

    <!-- LOGO -->
    <div class="logo">
        <!-- BOOK SVG ICON -->
        <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
            <path d="M2 6c0-1.1.9-2 2-2h7v16H4a2 2 0 0 1-2-2V6z"/>
            <path d="M22 6c0-1.1-.9-2-2-2h-7v16h7a2 2 0 0 0 2-2V6z"/>
        </svg>
        BookNest
    </div>

    <!-- NAVIGATION -->
    <nav class="nav">
        <a href="/onlinebookstore/">Home</a>
        <a href="books">Books</a>
        <a href="checkout">Checkout</a>

        <!-- CART WITH TROLLEY ICON -->
        <a href="mycart">
            <svg class="icon" fill="none" stroke-width="2" viewBox="0 0 24 24">
                <circle cx="9" cy="20" r="1"></circle>
                <circle cx="17" cy="20" r="1"></circle>
                <path d="M1 1h4l2.5 12h11l2-8H6"></path>
            </svg>
            My Cart
        </a>
    </nav>

    <!-- RIGHT SIDE -->
    <div class="right-section">
        <a href="login" class="btn">Login</a>
        
    </div>

</header>

</body>
</html>