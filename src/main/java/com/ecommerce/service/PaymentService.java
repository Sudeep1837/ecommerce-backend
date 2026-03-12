package com.ecommerce.service;

import org.springframework.stereotype.Service;

import java.util.Random;

@Service
public class PaymentService {
    
    // Simulate payment processing. Returns true 90% of the time.
    public boolean processPayment(Double amount) {
        return new Random().nextInt(100) > 10;
    }
}
