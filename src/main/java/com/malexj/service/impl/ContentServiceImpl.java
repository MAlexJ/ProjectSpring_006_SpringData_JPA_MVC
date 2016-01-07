package com.malexj.service.impl;

import com.malexj.entity.Content;
import com.malexj.repository.ContentRepository;
import com.malexj.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContentServiceImpl implements ContentService {

    @Autowired
    @Qualifier(value = "contentRepository")
    private ContentRepository repository;

    @Override
    public List<Content> getAll() {
        return repository.findAll();
    }
}
