package com.booknest.controller.cart;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookCartController {

    // Home / Books Page
    @GetMapping("/mycart")
    public String MyCartPage() {
        return "mycart";   // books.jsp inside WEB-INF/views
    }

    // Cart Page
    @GetMapping("/checkout")
    public String Checkout() {
        return "checkout";  // mycart.jsp inside WEB-INF/views
    }
}