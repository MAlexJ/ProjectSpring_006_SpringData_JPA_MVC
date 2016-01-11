package com.malexj.service;

import com.malexj.entity.Article;

import java.util.List;

public interface ArticleService {
    List<Article> getAll();

    Article getArticle(Integer id);

    void saveArticle(Article article);
}
