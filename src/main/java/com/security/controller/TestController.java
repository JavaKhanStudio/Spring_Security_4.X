package com.security.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

@RestController()
@RequestMapping(path = "/test")
public class TestController {

    @GetMapping
    public String getTest() {
        return "Hello world Test!";
    }

    @PostMapping
    public String postTest() {
        return "Hello world Post Test!";
    }

    @GetMapping("/security")
    public String testSecurity() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();

        return "Hello world Test Security! "
                + currentPrincipalName
                + " " + authorities
                + " " + authentication.getPrincipal()
                ;
    }

}