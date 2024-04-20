package com.springboot.mywebapp.login;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    private Logger logger = LoggerFactory.getLogger(getClass());

    @RequestMapping("login")
    public String goToLoginPage(@RequestParam String name, ModelMap model)  {
        model.put("name", name);
        logger.debug("Request param is {} " ,name); //print in debug level
        logger.info("Request param is {} " ,name); //print in info level
        System.out.println("Request param is (bad way)" + name);

        return "login";
    }
}
