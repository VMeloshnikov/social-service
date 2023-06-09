DROP TABLE IF EXISTS public."like", public."post", public."comment", public."tag", public."user";

CREATE TABLE public."like"
(
    id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    author_id bigint,
    "time" date,
    item_id bigint,
    type character varying(255) COLLATE pg_catalog."default",
    is_deleted boolean,
    CONSTRAINT like_pkey PRIMARY KEY (id)
    );

CREATE TABLE public."post"
(
    id bigint NOT NULL ,
    "time" timestamp with time zone,
    time_changed timestamp with time zone NOT NULL,
    author_id bigint NOT NULL,
    title text COLLATE pg_catalog."default" NOT NULL,
    post_type character varying(255) COLLATE pg_catalog."default",
    post_text text COLLATE pg_catalog."default" NOT NULL,
    is_blocked boolean,
    is_deleted boolean,
    comments_count integer NOT NULL,
    like_amount integer NOT NULL,
    my_like boolean DEFAULT false,
    image_path text COLLATE pg_catalog."default",
    publish_date timestamp with time zone,
    CONSTRAINT post_pkey PRIMARY KEY (id)
);

CREATE TABLE public."comment"
(
    id bigint NOT NULL ,
    comment_type character varying(255) COLLATE pg_catalog."default",
    "time" timestamp with time zone,
    time_changed timestamp with time zone NOT NULL,
    author_id bigint,
    parent_id bigint,
    comment_text text COLLATE pg_catalog."default" NOT NULL,
    post_id bigint NOT NULL,
    is_blocked boolean,
    is_deleted boolean,
    like_amount integer,
    my_like boolean DEFAULT false,
    image_path text COLLATE pg_catalog."default",
    comment_count integer,
    CONSTRAINT comment_pkey PRIMARY KEY (id)
);

CREATE TABLE public."tag"
(
    id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    name text COLLATE pg_catalog."default" NOT NULL,
    is_deleted boolean,
    CONSTRAINT tag_pkey PRIMARY KEY (id)
);

INSERT INTO public."post" (id, time, time_changed, author_id, title, post_type, post_text,
                           is_blocked, is_deleted, comments_count, like_amount, publish_date)
VALUES (1, '2023-03-15 00:14:33.429921+07', '2023-03-15 00:14:33.429921+07', 1, 'Заголовок', 'POSTED', 'текст тест',
        false, false, 0, 0, '2023-03-15 00:14:33.429921+07');

INSERT INTO public."comment" (id, comment_type, time, time_changed, author_id, comment_text, post_id,
                              is_blocked, is_deleted, like_amount, comment_count)
VALUES (2, 'POST', '2023-03-15 00:14:33.429921+07', '2023-03-15 00:14:33.429921+07', 1, 'comment test', 1, false,
        false, 0, 0);
