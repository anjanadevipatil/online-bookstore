<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>

<style>
body {
    margin: 0;
    background: #020c1b;
    font-family: 'Segoe UI', sans-serif;
}

/* FOOTER */
.footer {
    display: flex;
    justify-content: space-around;
    align-items: center;
    padding: 25px 40px;
    background: linear-gradient(90deg, #071a33, #020c1b);
    border-top: 1px solid #1c3b63;
}

/* FOOTER ITEM */
.footer-item {
    display: flex;
    align-items: center;
    gap: 12px;
    color: white;
}

/* ICON STYLE */
.footer-icon {
    width: 40px;
    height: 40px;
    border: 2px solid #00e6c3;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.footer-icon img {
    width: 20px;
    height: 20px;
    filter: invert(64%) sepia(89%) saturate(500%) hue-rotate(120deg);
}

/* TEXT */
.footer-item h4 {
    margin: 0;
    font-size: 14px;
    font-weight: 600;
}

.footer-item p {
    margin: 0;
    font-size: 12px;
    color: #a0aec0;
}

/* POPUP */
.popup {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,0.6);
    justify-content: center;
    align-items: center;
}

/* POPUP CONTENT */
.popup-content {
    background: #0f172a;
    padding: 25px;
    border-radius: 10px;
    width: 300px;
    text-align: center;
    color: white;
    border: 1px solid #1c3b63;
    font-family: monospace;
}

/* CLOSE BUTTON */
.close-btn {
    margin-top: 15px;
    padding: 8px 15px;
    border: none;
    background: #00e6c3;
    color: black;
    cursor: pointer;
    border-radius: 5px;
    font-weight: bold;
}
</style>

</head>

<body>

<!-- FOOTER -->
<div class="footer">

    <div class="footer-item">
        <div class="footer-icon">
            <img src="https://cdn-icons-png.flaticon.com/512/1995/1995574.png">
        </div>
        <div>
            <h4>Free Delivery</h4>
            <p>On orders above<div>&#8377;399</div></p>
        </div>
    </div>

    <div class="footer-item">
        <div class="footer-icon">
            <img src="https://cdn-icons-png.flaticon.com/512/2331/2331970.png">
        </div>
        <div>
            <h4>Secure Payment</h4>
            <p>100% secure checkout</p>
        </div>
    </div>

    <div class="footer-item">
        <div class="footer-icon">
            <img src="https://cdn-icons-png.flaticon.com/512/860/860829.png">
        </div>
        <div>
            <h4>Easy Returns</h4>
            <p>7 days return policy</p>
        </div>
    </div>

    <!-- CLICKABLE 24/7 SUPPORT -->
    <div class="footer-item" onclick="openSupport()">
        <div class="footer-icon">
            <img src="https://cdn-icons-png.flaticon.com/512/597/597177.png">
        </div>
        <div>
            <h4>24/7 Support</h4>
            <p>We are here to help</p>
        </div>
    </div>

</div>

<!-- POPUP -->
<div class="popup" id="popup">
    <div class="popup-content">
        <h3>[SUPPORT INFO]</h3>
        <p>[PHONE] +91 98765 43210</p>
        <p>[EMAIL] support@booknest.com</p>
        <p>[STATUS] AVAILABLE 24/7</p>

        <button class="close-btn" onclick="closeSupport()">CLOSE</button>
    </div>
</div>

<script>
function openSupport() {
    document.getElementById("popup").style.display = "flex";
}

function closeSupport() {
    document.getElementById("popup").style.display = "none";
}
</script>

</body>
</html>