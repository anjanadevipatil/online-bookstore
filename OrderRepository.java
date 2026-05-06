package com.glow.repository;

import com.glow.model.OrderItem;
import org.springframework.jdbc.core.JdbcTemplate;

public class OrderRepository {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // SAVE ORDER INTO DATABASE
    public int saveOrder(OrderItem o) {

        String sql = "INSERT INTO orders(product_name, price, quantity, total_amount, customer_name, address, payment_method) VALUES (?,?,?,?,?,?,?)";

        return jdbcTemplate.update(sql,
                o.getProductName(),
                o.getPrice(),
                o.getQuantity(),
                o.getTotalAmount(),
                o.getCustomerName(),
                o.getAddress(),
                o.getPaymentMethod()
        );
    }
}
