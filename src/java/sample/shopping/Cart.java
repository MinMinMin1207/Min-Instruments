/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Min
 */
public class Cart {

    private Map<Integer, InstrumentsDTO> cart;

    public Cart() {
    }

    public Cart(Map<Integer, InstrumentsDTO> cart) {
        this.cart = cart;
    }

    public Map<Integer, InstrumentsDTO> getCart() {
        return cart;
    }

    public void setCart(Map<Integer, InstrumentsDTO> cart) {
        this.cart = cart;
    }

    public boolean add(InstrumentsDTO tea) {
        boolean check = false;
        try {
            if (this.cart == null) {
                this.cart = new HashMap<>();
            }
            if (this.cart.containsKey(tea.getId())) {
                int currentQuantity = this.cart.get(tea.getId()).getQuantity();
                tea.setQuantity(currentQuantity + tea.getQuantity());
            }
              this.cart.put(Integer.parseInt(tea.getId()), tea);
            check = true;
        } catch (Exception e) {
        }
        return check;
    }

    public boolean remove(int id) {
        boolean check = false;
        try {
            if (this.cart != null) {
                if (this.cart.containsKey(id)) {
                    this.cart.remove(id);
                    check = true;
                }
            }
        } catch (Exception e) {

        }
        return check;

    }

    public boolean edit(int id, InstrumentsDTO tea) {
        boolean check = false;
        try {
            if (this.cart != null) {
                if (this.cart.containsKey(id)) {
                    this.cart.replace(id, tea);
                    check = true;
                }
            }
        } catch (Exception e) {
        }
        return check;
    }
}
