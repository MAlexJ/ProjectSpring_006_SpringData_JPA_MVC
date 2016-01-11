package com.malexj.controller;

import com.malexj.constant.Constant;
import com.malexj.entity.Article;
import com.malexj.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    private Constant constant;

    @Autowired
    @Qualifier(value = "articleServiceImpl")
    private ArticleService service;

    @RequestMapping(method = RequestMethod.GET)
    public String get(Model model) {
        model.addAttribute(constant.FLAG, "admin");
        model.addAttribute(constant.ARTICLES, service.getAll());
        return constant.PAGE;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String post(Model model,
                       @RequestParam(value = "insert_author", required = false) String insert_author,
                       @RequestParam(value = "insert_content", required = false) String insert_content,
                       @RequestParam(value = "insert_date", required = false) String insert_date,
                       @RequestParam(value = "insert_icon", required = false) String insert_icon,
                       @RequestParam(value = "insert_name", required = false) String insert_name,
                       @RequestParam(value = "insert_preview", required = false) String insert_preview,
                       @RequestParam(value = "insert_type", required = false) String insert_type)
    {
        if (validateObject(insert_author, insert_content, insert_date, insert_icon, insert_name, insert_preview, insert_type)) {
            Article article = new Article();
            article.setAuthor_ar(insert_author);
            article.setContent_ar(insert_content);
            article.setDate_ar(formatStringToSqlDate(insert_date));
            article.setIcon_ar(insert_icon);
            article.setName_ar(insert_name);
            article.setPreview_ar(insert_preview);
            article.setType_ar(insert_type);
            service.saveArticle(article);
        }
        model.addAttribute(constant.FLAG, "admin");
        model.addAttribute(constant.ARTICLES, service.getAll());
        return constant.PAGE;
    }

    private boolean validateObject(Object... objects) {
        for (Object item : objects) {
            if (item == null || item.equals("")) return false;
        }
        return true;
    }

    private java.sql.Date formatStringToSqlDate(String date) {
        if (date == null || date.equals("")) {
            return null;
        }
        SimpleDateFormat format_02 = new java.text.SimpleDateFormat("dd/MM/yyyy");
        java.util.Date parsed_02 = null;
        try {
            parsed_02 = format_02.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        assert parsed_02 != null;
        return new Date(parsed_02.getTime());
    }
}
