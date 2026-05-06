<%@ include file="./WEB-INF/views/nav.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookNest</title>

<style>
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: radial-gradient(circle at top right, #0a2540, #020c1b);
    color: white;
}

/* HERO */
.hero {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 60px;
}

.hero-text small {
    color: #00e6c3;
}

.hero-text h1 {
    font-size: 52px;
    margin: 10px 0;
}

.hero-text span {
    color: #00e6c3;
}

.hero-text p {
    color: #a0aec0;
}

.hero img {
    width: 420px;
    border-radius: 12px;
    box-shadow: 0 10px 40px rgba(255,255,255,0.1);
}

/* SEARCH */
.search-row {
    display: flex;
    align-items: center;
    gap: 20px;
    margin: 30px 60px;
}

.search-box {
    flex: 1;
    display: flex;
    background: #0f2747;
    border-radius: 10px;
    border: 1px solid #1c3b63;
}

.search-box input {
    flex: 1;
    padding: 16px;
    border: none;
    background: transparent;
    color: white;
    outline: none;
}

.search-box button {
    padding: 16px 30px;
    background: #00e6c3;
    border: none;
    color: black;
    font-weight: bold;
    border-radius: 0 10px 10px 0;
    cursor: pointer;
}

/* VIEW ALL */
.view-all {
    color: #00e6c3;
    text-decoration: none;
    border: 1px solid #00e6c3;
    padding: 10px 18px;
    border-radius: 8px;
}

/* SECTION */
.section {
    padding: 20px 60px 50px;
}

.section h3 {
    margin-bottom: 20px;
}

/* ✅ FIXED: HORIZONTAL SINGLE LINE */
.books {
    display: flex;
    gap: 20px;
    flex-wrap: nowrap;
    overflow-x: auto;
    padding-bottom: 10px;
}

/* SCROLL STYLE */
.books::-webkit-scrollbar {
    height: 6px;
}

.books::-webkit-scrollbar-thumb {
    background: #00e6c3;
    border-radius: 10px;
}

/* CARD */
.card {
    background: #0f2747;
    border-radius: 14px;
    padding: 15px;
    width: 190px;
    border: 1px solid #1c3b63;
    flex-shrink: 0;
}

.card img {
    width: 100%;
    height: 250px;
    object-fit: cover;
    border-radius: 10px;
}

.card h4 {
    margin: 10px 0 5px;
    font-size: 14px;
}

.card p {
    font-size: 12px;
    color: #a0aec0;
}

.price {
    color: #00e6c3;
    margin: 8px 0;
    font-weight: bold;
}

.price::before {
    content: "₹ ";
}

.card button {
    width: 100%;
    padding: 8px;
    border: 1px solid #00e6c3;
    background: transparent;
    color: #00e6c3;
    border-radius: 6px;
    cursor: pointer;
}
</style>

</head>

<body>

<!-- HERO -->
<div class="hero">
    <div class="hero-text">
        <small>WELCOME TO BOOKNEST</small>
        <h1>Find Your Next <br><span>Great Read</span></h1>
        <p>
            Discover thousands of books across all genres.<br>
            Add to cart and enjoy reading!
        </p>
    </div>

    <img src="https://img.freepik.com/premium-photo/vector-magic-book-blue-background_1199132-233234.jpg">
</div>

<!-- SEARCH -->
<div class="search-row">
    <div class="search-box">
        <input type="text" id="searchInput" placeholder="Search books by title or author...">
        <button>Search</button>
    </div>

    <a href="<%= request.getContextPath() %>/books.jsp" class="view-all">View All Books</a>
</div>

<!-- BOOKS -->
<div class="section">
    <h3>Popular Books</h3>

    <div class="books">

        <div class="card">
            <img src="https://m.media-amazon.com/images/I/71aFt4+OTOL.jpg">
            <h4>The Alchemist</h4>
            <p>Paulo Coelho</p>
            <div>&#8377;599</div>
        </div>

        <div class="card">
            <img src="https://m.media-amazon.com/images/I/81bGKUa1e0L.jpg">
            <h4>Atomic Habits</h4>
            <p>James Clear</p>
            <div>&#8377;499</div>
        </div>

        <div class="card">
            <img src="https://m.media-amazon.com/images/I/81bsw6fnUiL.jpg">
            <h4>Rich Dad Poor Dad</h4>
            <p>Robert Kiyosaki</p>
            <div>&#8377;799</div>
        </div>

        <div class="card">
            <img src="https://m.media-amazon.com/images/I/71zytzrg6lL.jpg">
            <h4>The 5 AM Club</h4>
            <p>Robin Sharma</p>
           <div>&#8377;899</div>
        </div>

        <div class="card">
            <img src="https://m.media-amazon.com/images/I/71UypkUjStL.jpg">
            <h4>Think and Grow Rich</h4>
            <p>Napoleon Hill</p>
            <div>&#8377;499</div>
        </div>

        <div class="card">
            <img src="https://m.media-amazon.com/images/I/71sBtM3Yi5L.jpg">
            <h4>The Power of Your Subconscious Mind</h4>
            <p>Dr. Joseph Murphy</p>
          <div>&#8377;699</div>
        </div>

    </div>
</div>

<!-- FOOTER -->
<%@ include file="./WEB-INF/views/footer.jsp" %>

<!-- SEARCH SCRIPT -->
<script>
const input = document.getElementById("searchInput");
const cards = document.querySelectorAll(".card");

input.addEventListener("keyup", function () {
    let value = input.value.toLowerCase();

    cards.forEach(card => {
        let title = card.querySelector("h4").innerText.toLowerCase();
        let author = card.querySelector("p").innerText.toLowerCase();

        if (title.includes(value) || author.includes(value)) {
            card.style.display = "block";
        } else {
            card.style.display = "none";
        }
    });
});
</script>

</body>
</html>