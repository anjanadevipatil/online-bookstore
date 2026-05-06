<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Cart</title>

<style>
* {
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: Arial;
}

body {
    min-height: 100vh;
    color:white;

    /* ✨ GLITTER BACKGROUND */
    background: radial-gradient(circle at top, #0f172a, #020617, #000000);
    overflow:hidden;
}

/* glitter overlay */
body::before {
    content:"";
    position:fixed;
    width:100%;
    height:100%;
    background-image:
        radial-gradient(rgba(255,255,255,0.08) 1px, transparent 1px),
        radial-gradient(rgba(0,255,255,0.06) 1px, transparent 1px);
    background-size:40px 40px;
    animation: move 12s linear infinite;
    opacity:0.6;
    z-index:-1;
}

@keyframes move {
    0% {transform: translateY(0);}
    100% {transform: translateY(-40px);}
}

.container {
    width:500px;
    margin:40px auto;
    padding:25px;
    border-radius:20px;
    background: rgba(255,255,255,0.06);
    backdrop-filter: blur(18px);
    border: 1px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 25px rgba(0,255,255,0.2);
}

h2 {
    text-align:center;
    margin-bottom:15px;
    color:#38bdf8;
}

.item {
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:10px;
    margin:10px 0;
    background: rgba(255,255,255,0.05);
    border-radius:10px;
}

.price {
    font-weight:bold;
}

.remove-btn {
    background:#ef4444;
    border:none;
    padding:5px 10px;
    border-radius:10px;
    color:white;
    cursor:pointer;
}

input, select {
    width:100%;
    padding:10px;
    margin:8px 0;
    border-radius:10px;
    border:none;
}

button {
    width:100%;
    padding:12px;
    margin-top:15px;
    background: linear-gradient(135deg,#22c55e,#4ade80);
    border:none;
    border-radius:25px;
    color:white;
    cursor:pointer;
}

/* ⭐ FIXED TOTAL STYLE */
.total {
    font-size:18px;
    margin-top:10px;
    color:#facc15;
}

.total div {
    font-size:18px;
    color:#facc15;
}

.empty {
    text-align:center;
    color:#cbd5e1;
}
</style>

</head>

<body>

<div class="container">

<h2>My Cart</h2>

<div id="cartItems"></div>

<!-- ⭐ FIXED ₹ FORMAT -->
<div class="total">Total: <div id="totalBox">&#8377;0</div></div>

<hr>

<h3>Delivery Address</h3>
<input type="text" id="name" placeholder="Full Name">
<input type="text" id="address" placeholder="Address">
<input type="text" id="city" placeholder="City">

<h3>Payment</h3>
<select id="payment">
    <option>Cash on Delivery</option>
    <option>UPI</option>
    <option>Card</option>
</select>

<button onclick="checkout()">Buy Now</button>

</div>

<script>

let cart = JSON.parse(localStorage.getItem("cart")) || [];

/* RENDER CART */
function renderCart() {

    let cartDiv = document.getElementById("cartItems");
    cartDiv.innerHTML = "";

    let total = 0;

    if(cart.length === 0){
        cartDiv.innerHTML = "<p class='empty'>Your cart is empty</p>";
        document.getElementById("totalBox").innerHTML = "&#8377;0";
        return;
    }

    cart.forEach((item, index) => {

        let price = Number(item.price);
        total += price;

        cartDiv.innerHTML += `
        <div class="item">
            <span>${item.name}</span>
            <span>
                <span class="price">&#8377;${price}</span>
                <button class="remove-btn" onclick="removeItem(${index})">X</button>
            </span>
        </div>`;
    });

    /* ⭐ FIXED FORMAT OUTPUT */
    document.getElementById("totalBox").innerHTML = "&#8377;" + total;
}

/* REMOVE ITEM */
function removeItem(index){
    cart.splice(index,1);
    localStorage.setItem("cart", JSON.stringify(cart));
    renderCart();
}

/* CHECKOUT */
function checkout() {

    let name = document.getElementById("name").value;
    let address = document.getElementById("address").value;

    if(name === "" || address === ""){
        alert("Please fill address");
        return;
    }

    let total = 0;

    cart.forEach(item => {
        total += Number(item.price);
    });

    localStorage.setItem("checkoutCart", JSON.stringify(cart));
    localStorage.setItem("checkoutTotal", total);
    localStorage.setItem("checkoutCount", cart.length);
    localStorage.setItem("payment", document.getElementById("payment").value);
    localStorage.setItem("orderAddress", address);

    window.location.href = "checkout";
}

renderCart();

</script>

</body>
</html>