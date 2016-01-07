package com.malexj.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table(name = "content")
//TODO прочиать ->>>>  http://javatalks.ru/topics/39956?page=1#203496
//TODO ->>>>   org.hibernate.engine.jdbc.internal.LobCreatorBuilder.useContextualLobCreation HHH000424: Disabling contextual LOB creation as createClob() method threw error : java.lang.reflect.InvocationTargetException
public class Content {

    @Id
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    @Column(name = "id", length = 6, nullable = false)
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "preview")
    private String preview;

    @Column(name = "content")
    private String content;

    public Content() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPreview() {
        return preview;
    }

    public void setPreview(String preview) {
        this.preview = preview;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Content{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", preview='" + preview + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
