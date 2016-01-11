package com.malexj.service;

import com.malexj.entity.Article;

import java.util.List;

public interface ArticleService {
    List<Article> getAll();

    Article getArticle(Integer id);

    void insertArticle(Article article);

    void delete(Integer delete_id);

    void updateArticle(Article article);
}
