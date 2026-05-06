<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BookNest - Checkout</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    min-height: 100vh;
    color: white;
    background: radial-gradient(circle at top, #0f172a, #020617, #000000);
}

.container {
    width: 450px;
    margin: 80px auto;
    padding: 30px;
    border-radius: 20px;
    background: rgba(255,255,255,0.06);
    backdrop-filter: blur(18px);
    text-align: center;
    border: 1px solid rgba(255,255,255,0.1);
}

h1 {
    color: #22c55e;
    margin-bottom: 10px;
}

.info {
    text-align: left;
    margin-top: 20px;
    font-size: 14px;
    line-height: 1.8;
}

.btn {
    width: 100%;
    padding: 12px;
    margin-top: 20px;
    border: none;
    border-radius: 25px;
    cursor: pointer;
    color: white;
    background: linear-gradient(135deg, #22c55e, #4ade80);
    font-weight: bold;
}

.empty {
    color: red;
    text-align: center;
}
</style>

</head>

<body>

<div class="container">

    <h1>Order Summary</h1>

    <div class="info">
        <p><b>Items:</b> <span id="count">0</span></p>
        <p><b>Total:</b> &#8377;<span id="total">0</span></p>
        <p><b>Payment:</b> Cash on Delivery</p>
        <p><b>Address:</b> ashram road opposite to mainvati ladies hostel bijapur</p>

        <p id="msg" class="empty"></p>
    </div>

    <button class="btn" onclick="checkoutOrder()">Confirm Order</button>

    <a href="<%= request.getContextPath() %>/index.jsp">
        <button class="btn" style="background:#3b82f6;margin-top:10px;">Go Home</button>
    </a>

</div>

<script>

/* ✅ FIX: use correct key from MyCart page */
let cart = [];

function loadCart() {
    try {
        let data = localStorage.getItem("checkoutCart"); // 🔥 FIXED HERE
        cart = data ? JSON.parse(data) : [];
        if (!Array.isArray(cart)) cart = [];
    } catch (e) {
        cart = [];
    }
}

loadCart();

/* CALCULATE TOTAL */
let total = 0;

if (cart.length > 0) {

    cart.forEach(item => {
        total += Number(item.price) * (item.quantity || 1);
    });

    document.getElementById("count").innerText = cart.length;
    document.getElementById("total").innerText = total;
    document.getElementById("msg").innerText = "";

} else {
    document.getElementById("count").innerText = 0;
    document.getElementById("total").innerText = 0;
    document.getElementById("msg").innerText = "No items found in cart!";
}

/* CHECKOUT */
function checkoutOrder() {

    loadCart(); // reload again for safety

    if (cart.length === 0) {
        alert("Cart is empty!");
        return;
    }

    let address = "ashram road opposite to mainvati ladies hostel bijapur";
    let payment = "Cash on Delivery";

    cart.forEach(item => {

        fetch("http://localhost:8080/order/add", {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body:
                "productName=" + encodeURIComponent(item.name) +
                "&price=" + item.price +
                "&quantity=" + (item.quantity || 1) +
                "&totalAmount=" + (item.price * (item.quantity || 1)) +
                "&customerName=BookNestUser" +
                "&address=" + encodeURIComponent(address) +
                "&paymentMethod=" + payment
        });

    });

    alert("Order placed successfully!");

    /* CLEAR ONLY AFTER SUCCESS */
    localStorage.removeItem("checkoutCart");

    window.location.href = "index.jsp";
}

</script>

</body>
</html>