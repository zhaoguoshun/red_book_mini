package com.wanou.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

/**
 * @author txh
 * @date 2021/9/13 19:36
 */
@Controller
@RequestMapping("/static")
public class WebController {

    @RequestMapping
    public void test(HttpServletRequest request, ModelAndView modelAndView){
        System.out.println(request);
    }
}
