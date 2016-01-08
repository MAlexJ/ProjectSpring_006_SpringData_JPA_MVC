# ProjectSpring_006_SpringData_JPA_MVC
Стартовый проект Spring-Data, JPA, MVC, Bootstrap

09.01.2016

CREATE TABLE article
(
    id SERIAL PRIMARY KEY NOT NULL,
    name_ar VARCHAR(80) NOT NULL,
    type_ar VARCHAR(50) NOT NULL,
    preview_ar VARCHAR NOT NULL,
    content_ar VARCHAR NOT NULL,
    icon_ar VARCHAR(100) NOT NULL,
    date_ar DATE NOT NULL,
    author_ar VARCHAR(50) NOT NULL
);
CREATE TABLE article_id_ar_seq
(
    sequence_name VARCHAR NOT NULL,
    last_value BIGINT NOT NULL,
    start_value BIGINT NOT NULL,
    increment_by BIGINT NOT NULL,
    max_value BIGINT NOT NULL,
    min_value BIGINT NOT NULL,
    cache_value BIGINT NOT NULL,
    log_cnt BIGINT NOT NULL,
    is_cycled BOOL NOT NULL,
    is_called BOOL NOT NULL
);
CREATE TABLE content
(
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(20) NOT NULL,
    preview VARCHAR NOT NULL,
    content VARCHAR NOT NULL
);
CREATE TABLE content_id_seq
(
    sequence_name VARCHAR NOT NULL,
    last_value BIGINT NOT NULL,
    start_value BIGINT NOT NULL,
    increment_by BIGINT NOT NULL,
    max_value BIGINT NOT NULL,
    min_value BIGINT NOT NULL,
    cache_value BIGINT NOT NULL,
    log_cnt BIGINT NOT NULL,
    is_cycled BOOL NOT NULL,
    is_called BOOL NOT NULL
);
