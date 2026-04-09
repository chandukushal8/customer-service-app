package com.example.customer.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomerResource {

    private final String message;

    public CustomerResource() {
        // Change this during deployment to test rolling update/recreate
        this.message = "This is a customer microservice";
    }

    @GetMapping("/customer/ping")
    public String ping() {
        return message;
    }
}
