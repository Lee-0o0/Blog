
-- 文章表
CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `slug` varchar(128) DEFAULT NULL COMMENT 'slug，链接',
  `title` varchar(256) DEFAULT '' COMMENT '标题',
  `keywords` varchar(256) DEFAULT '' COMMENT '关键字',
  `summary` text COMMENT '摘要',
  `content` longtext COMMENT '内容，以markdown格式存储',
  `status` varchar(32) DEFAULT NULL COMMENT '状态，草稿、公开、私密、已删除',
  `comment_status` tinyint(1) DEFAULT '1' COMMENT '评论状态，默认允许评论',
  `like_count` int(11) unsigned DEFAULT '0' COMMENT '喜爱量',
  `view_count` int(11) unsigned DEFAULT '0' COMMENT '访问量',
  `modified_datetime` datetime DEFAULT NULL COMMENT '最后更新日期',
  `created_datetime` datetime DEFAULT NULL COMMENT '创建日期',
  `meta_keywords` varchar(512) DEFAULT NULL COMMENT 'SEO关键字',
  `meta_description` varchar(512) DEFAULT NULL COMMENT 'SEO描述信息',
  `remarks` text COMMENT '备注信息',
  PRIMARY KEY (`id`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章表';