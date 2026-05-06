package com.glow.repository;

import com.glow.model.CartItem;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.util.List;

public class CartRepository {

    private JdbcTemplate jdbcTemplate;

    // setter injection
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // ADD ITEM
    public int addCartItem(CartItem item) {
        String sql = "INSERT INTO cart_items(product_name, price, quantity) VALUES (?, ?, ?)";
        return jdbcTemplate.update(sql,
                item.getProductName(),
                item.getPrice(),
                item.getQuantity());
    }

    // GET ALL ITEMS
    public List<CartItem> getAllItems() {
        String sql = "SELECT * FROM cart_items";

        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            CartItem item = new CartItem();
            item.setId(rs.getInt("id"));
            item.setProductName(rs.getString("product_name"));
            item.setPrice(rs.getDouble("price"));
            item.setQuantity(rs.getInt("quantity"));
            return item;
        });
    }

    // DELETE ITEM
    public int deleteItem(int id) {
        String sql = "DELETE FROM cart_items WHERE id=?";
        return jdbcTemplate.update(sql, id);
    }
}