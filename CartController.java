package com.glow.controllers;

import com.glow.model.CartItem;
import com.glow.repository.CartRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

    private CartRepository repo = new CartRepository();

    // ADD ITEM
    @PostMapping("/add")
    @ResponseBody
    public String addCart(@RequestParam String productName,
                          @RequestParam double price,
                          @RequestParam int quantity) {

        CartItem item = new CartItem();
        item.setProductName(productName);
        item.setPrice(price);
        item.setQuantity(quantity);

        repo.addCartItem(item);

        return "Item added successfully";
    }

    // GET ALL ITEMS
    @GetMapping("/all")
    @ResponseBody
    public List<CartItem> getAll() {
        return repo.getAllItems();
    }

    // DELETE ITEM
    @GetMapping("/delete")
    @ResponseBody
    public String delete(@RequestParam int id) {
        repo.deleteItem(id);
        return "Item deleted";
    }
}
