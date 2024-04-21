package com.springboot.mywebapp.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {

    public boolean authenticate(String username, String password) {
        boolean isValidUsername = username.equalsIgnoreCase("Eleri");
        boolean isValidPassword = password.equalsIgnoreCase("1234");

        return isValidUsername && isValidPassword;
    }
}
