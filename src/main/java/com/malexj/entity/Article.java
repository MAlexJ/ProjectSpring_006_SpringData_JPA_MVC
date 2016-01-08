package com.malexj.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "article")
public class Article {

    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "id", length = 6, nullable = false)
    private Integer id;

    @Column(name = "name_ar")
    private String name_ar;

    @Column(name = "type_ar")
    private String type_ar;

    @Column(name = "preview_ar")
    private String preview_ar;

    @Column(name = "content_ar")
    private String content_ar;

    @Column(name = "icon_ar")
    private String icon_ar;

    @Column(name = "date_ar")
    private Date date_ar;

    @Column(name = "author_ar")
    private String author_ar;

    public Article() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName_ar() {
        return name_ar;
    }

    public void setName_ar(String name_ar) {
        this.name_ar = name_ar;
    }

    public String getType_ar() {
        return type_ar;
    }

    public void setType_ar(String type_ar) {
        this.type_ar = type_ar;
    }

    public String getPreview_ar() {
        return preview_ar;
    }

    public void setPreview_ar(String preview_ar) {
        this.preview_ar = preview_ar;
    }

    public String getContent_ar() {
        return content_ar;
    }

    public void setContent_ar(String content_ar) {
        this.content_ar = content_ar;
    }

    public String getIcon_ar() {
        return icon_ar;
    }

    public void setIcon_ar(String icon_ar) {
        this.icon_ar = icon_ar;
    }

    public Date getDate_ar() {
        return date_ar;
    }

    public void setDate_ar(Date date_ar) {
        this.date_ar = date_ar;
    }

    public String getAuthor_ar() {
        return author_ar;
    }

    public void setAuthor_ar(String author_ar) {
        this.author_ar = author_ar;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", name_ar='" + name_ar + '\'' +
                ", type_ar='" + type_ar + '\'' +
                ", preview_ar='" + preview_ar + '\'' +
                ", content_ar='" + content_ar + '\'' +
                ", icon_ar='" + icon_ar + '\'' +
                ", date_ar=" + date_ar +
                ", author_ar='" + author_ar + '\'' +
                '}';
    }
}
