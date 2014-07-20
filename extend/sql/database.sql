-- Database: hanfu

-- DROP DATABASE hanfu;

CREATE DATABASE hanfu
  WITH OWNER = han
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'zh_CN.UTF-8'
       LC_CTYPE = 'zh_CN.UTF-8'
       CONNECTION LIMIT = -1;

COMMENT ON DATABASE hanfu
  IS '汉服网站的数据库';
  
-- Table: userinfo

-- DROP TABLE userinfo;

CREATE TABLE userinfo
(
  username text, -- 用户名
  password text, -- 用户密码
  email text, -- 用户邮箱
  id integer NOT NULL DEFAULT nextval('user_id_seq'::regclass), -- 用户ID
  CONSTRAINT user_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE userinfo
  OWNER TO han;
COMMENT ON TABLE userinfo
  IS '用户表';
COMMENT ON COLUMN userinfo.username IS '用户名';
COMMENT ON COLUMN userinfo.password IS '用户密码';
COMMENT ON COLUMN userinfo.email IS '用户邮箱';
COMMENT ON COLUMN userinfo.id IS '用户ID';

-- Table: topic

-- DROP TABLE topic;

CREATE TABLE topic
(
  id serial NOT NULL, -- 主题id
  topicid integer,
  mianimageid integer, -- 主图片id
  createby integer, -- 发布主题的人
  "topicCategory" integer, -- 主题编号
  CONSTRAINT topic_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE topic
  OWNER TO han;
COMMENT ON TABLE topic
  IS '主题 ';
COMMENT ON COLUMN topic.id IS '主题id';
COMMENT ON COLUMN topic.mianimageid IS '主图片id';
COMMENT ON COLUMN topic.createby IS '发布主题的人';
COMMENT ON COLUMN topic."topicCategory" IS '主题编号';