package com.malexj.service.impl;

import com.malexj.entity.Article;
import com.malexj.repository.ArticleRepository;
import com.malexj.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleRepository repository;

    @Override
    public List<Article> getAll() {
        return repository.findAll();
    }

    @Override
    public Article getArticle(Integer id) {
        return repository.findOne(id);
    }

    @Override
    public void insertArticle(Article article) {
        repository.saveAndFlush(article);
    }

    @Override
    public void delete(Integer delete_id) {
        repository.delete(delete_id);
    }

    @Override
    public void updateArticle(Article article) {
        repository.saveAndFlush(article);
    }
}
