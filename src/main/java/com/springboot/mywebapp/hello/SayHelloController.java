package com.springboot.mywebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHelloController {

    @RequestMapping("say-hello")
    @ResponseBody
    public String sayHello() {
        return "Hello! What are you learning today? Wow, my devtools finally work!";
    }

    @RequestMapping("say-hello-html")
    @ResponseBody
    public String sayHelloHtml() {
        StringBuffer sb = new StringBuffer();
        sb.append("<html>");
        sb.append("<head>");
        sb.append("<title>HTML page</title>");
        sb.append("</head>");
        sb.append("<body>");
        sb.append("My first appended html body this way. Nice!");
        sb.append("</body>");
        sb.append("</html>");

        return sb.toString();
    }

    //JSP
    //src/main/resources/META-INF.resources.WEB-INF.jsp.sayHello.jsp
    @RequestMapping("say-hello-jsp")
    public String sayHelloJsp() {
        return "sayHello";
    }
}
