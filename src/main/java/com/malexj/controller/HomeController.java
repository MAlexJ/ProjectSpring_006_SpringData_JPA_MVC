package com.malexj.controller;

import com.malexj.constant.Constant;
import com.malexj.service.impl.ContentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class HomeController {

    @Autowired
    private Constant constant;

    @Autowired
    private ContentServiceImpl service;

    @RequestMapping(method = RequestMethod.GET)
    public String get(Model model) {
        model.addAttribute("list",service.getAll());
        model.addAttribute("flag","home");
        return constant.PAGE;
    }
}
