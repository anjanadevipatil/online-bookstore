package com.booknestapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookNestappController {

    // Home / Books Page
    @GetMapping("/books")
    public String BooksPage() {
        return "books";   // books.jsp inside WEB-INF/views
    }

    // Cart Page
    @GetMapping("/mycart")
    public String MyCartPage() {
        return "mycart";  // mycart.jsp inside WEB-INF/views
    }
}