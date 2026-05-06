package com.glow.controllers;

import com.glow.model.OrderItem;
import com.glow.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderRepository repo;

    // SAVE ORDER
    @PostMapping("/add")
    public String addOrder(@RequestParam String productName,
                           @RequestParam double price,
                           @RequestParam int quantity,
                           @RequestParam double totalAmount,
                           @RequestParam String customerName,
                           @RequestParam String address,
                           @RequestParam String paymentMethod) {

        OrderItem order = new OrderItem();

        order.setProductName(productName);
        order.setPrice(price);
        order.setQuantity(quantity);
        order.setTotalAmount(totalAmount);
        order.setCustomerName(customerName);
        order.setAddress(address);
        order.setPaymentMethod(paymentMethod);

        repo.saveOrder(order);

        return "Order saved successfully";
    }
}