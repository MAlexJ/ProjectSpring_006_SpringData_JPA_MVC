package com.malexj.controller;

import com.malexj.constant.Constant;
import com.malexj.service.impl.ArticleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/article")
public class ArticleController {

    @Autowired
    private Constant constant;

    @Autowired
    private ArticleServiceImpl service;

    @RequestMapping(method = RequestMethod.GET)
    public String get(Model model) {
        model.addAttribute(constant.ARTICLES, service.getAll());
        model.addAttribute(constant.FLAG, "article");
        return constant.PAGE;
    }

    @RequestMapping(value = "/{category}", method = RequestMethod.GET)
    public String getArticle(Model model,
                             @PathVariable Integer category) {
        model.addAttribute(constant.ARTICLES, service.getAll());
        model.addAttribute(constant.FLAG, "article");
        model.addAttribute(constant.CATEGORY, category);
        return constant.PAGE;
    }

}
