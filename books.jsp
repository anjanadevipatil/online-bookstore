<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BookNest - Books</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

/* 🌌 BACKGROUND */
body {
    min-height: 100vh;
    color: white;
    background: radial-gradient(circle at top, #0f172a, #020617, #000000);
    overflow-x: hidden;
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

/* HEADER */
header {
    display: flex;
    justify-content: space-between;
    padding: 15px 40px;
    background: rgba(255,255,255,0.05);
    backdrop-filter: blur(15px);
}

/* LOGO */
.logo {
    display: flex;
    align-items: center;
    gap: 10px;
    font-size: 22px;
    color: #38bdf8;
}

/* NAV */
.nav {
    display: flex;
    align-items: center;
    gap: 15px;
}

/* BUTTON STYLE */
.home-btn {
    padding: 8px 15px;
    border-radius: 20px;
    border: none;
    cursor: pointer;
    background: linear-gradient(135deg, #22c55e, #16a34a);
    color: white;
}

/* BOOK GRID */
.books {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 25px;
    padding: 40px;
}

/* CARD */
.card {
    background: rgba(255,255,255,0.06);
    border-radius: 20px;
    padding: 20px;
    text-align: center;
}

.card img {
    width: 100%;
    height: 260px;
    object-fit: cover;
    border-radius: 15px;
}

.card h4 {
    color: #facc15;
    margin-top: 10px;
}

.price {
    color: #4ade80;
    font-size: 18px;
    margin: 10px 0;
}

button {
    padding: 10px 20px;
    border-radius: 25px;
    background: linear-gradient(135deg, #38bdf8, #6366f1);
    color: white;
    border: none;
    cursor: pointer;
}
</style>
</head>

<body>

<header>

    <div class="logo">
        <i class="fa-solid fa-book"></i> BookNest
    </div>

    <div class="nav">

        <!-- HOME -->
        <button class="home-btn"
            onclick="window.location.href='<%= request.getContextPath() %>/index.jsp'">
            <i class="fa-solid fa-house"></i> Home
        </button>

        <!-- CART (FIXED NAVIGATION) -->
        <button class="cart-btn"
            onclick="window.location.href='<%= request.getContextPath() %>/mycart'">
            <i class="fa-solid fa-cart-shopping"></i>
            Cart: <span id="cartCount">0</span>
        </button>

    </div>

</header>

<!-- BOOKS -->
<div class="books">

    <div class="card">
        <img src="https://m.media-amazon.com/images/I/71aFt4+OTOL.jpg">
        <h4>The Alchemist</h4>
        <div>&#8377;599</div>
        <button onclick="addToCart('The Alchemist',599)">Add to Cart</button>
    </div>

    <div class="card">
        <img src="https://m.media-amazon.com/images/I/81bGKUa1e0L.jpg">
        <h4>Atomic Habits</h4>
        <div>&#8377;499</div>
        <button onclick="addToCart('Atomic Habits',499)">Add to Cart</button>
    </div>

    <div class="card">
        <img src="https://m.media-amazon.com/images/I/81bsw6fnUiL.jpg">
        <h4>Rich Dad Poor Dad</h4>
        <div>&#8377;799</div>
        <button onclick="addToCart('Rich Dad Poor Dad',799)">Add to Cart</button>
    </div>

    <div class="card">
        <img src="https://m.media-amazon.com/images/I/71zytzrg6lL.jpg">
        <h4>The 5 AM Club</h4>
        <div>&#8377;899</div>
        <button onclick="addToCart('The 5 AM Club',899)">Add to Cart</button>
    </div>

    <div class="card">
        <img src="https://m.media-amazon.com/images/I/71UypkUjStL.jpg">
        <h4>Think and Grow Rich</h4>
        <div>&#8377;499</div>
        <button onclick="addToCart('Think and Grow Rich',499)">Add to Cart</button>
    </div>

    <div class="card">
        <img src="https://m.media-amazon.com/images/I/71sBtM3Yi5L.jpg">
        <h4>The Power of Your Subconscious Mind</h4>
        <div>&#8377;699</div>
        <button onclick="addToCart('Subconscious Mind',699)">Add to Cart</button>
    </div>

</div>

<script>
let cart = JSON.parse(localStorage.getItem("cart")) || [];
document.getElementById("cartCount").innerText = cart.length;

function addToCart(name, price) {
    cart.push({ name, price });
    localStorage.setItem("cart", JSON.stringify(cart));
    document.getElementById("cartCount").innerText = cart.length;
    alert(name + " added to cart!");
}
</script>

</body>
</html>