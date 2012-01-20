CREATE TABLE `certifications` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `priority` int(11) default NULL,
  `certification_no` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `core_competencies` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `priority` int(11) default NULL,
  `description` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `databases` (
  `id` int(11) NOT NULL auto_increment,
  `database` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `degree_names` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `designations` (
  `id` int(11) NOT NULL auto_increment,
  `designation` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `disciplines` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `educationals` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `qualification` varchar(255) collate utf8_unicode_ci default NULL,
  `from` date default NULL,
  `to` date default NULL,
  `qualification_name_id` int(11) default NULL,
  `degree_name_id` int(11) default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `graduation_id` int(11) default NULL,
  `pg_id` int(11) default NULL,
  `discipline_id` int(11) default NULL,
  `university_id` int(11) default NULL,
  `board` varchar(255) collate utf8_unicode_ci default NULL,
  `institute` varchar(255) collate utf8_unicode_ci default NULL,
  `percentage` int(11) default NULL,
  `schoolarship` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `frameworks` (
  `id` int(11) NOT NULL auto_increment,
  `framework` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `graduations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `languges` (
  `id` int(11) NOT NULL auto_increment,
  `languge` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `operating_sys` (
  `id` int(11) NOT NULL auto_increment,
  `os` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `operating_systems` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `pgs` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `professional_summaries` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `summary` text collate utf8_unicode_ci,
  `priority` int(11) default '1',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `professionals` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `designation_id` text collate utf8_unicode_ci,
  `description` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `qualification_names` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `referance_works` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `priority` int(11) default '1',
  `description` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `role_responsibilities` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `role` text collate utf8_unicode_ci,
  `priority` int(11) default '1',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) collate utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tech_others` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `titlle` text collate utf8_unicode_ci,
  `name` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tech_proficencies` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `languge_id` int(11) default NULL,
  `database_id` int(11) default NULL,
  `framework_id` int(11) default NULL,
  `os_id` int(11) default NULL,
  `web_tool` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `universities` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `user_databases` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `database_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `user_frameworks` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `framework_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `user_languges` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `languge_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `user_operating_systems` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `operating_system_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `user_os` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `operating_sy_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `user_resumes` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `filename` varchar(255) collate utf8_unicode_ci default NULL,
  `content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `size` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `user_webtools` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `web_tool_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(255) collate utf8_unicode_ci default NULL,
  `fname` varchar(255) collate utf8_unicode_ci default NULL,
  `lname` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `phone_no` bigint(20) default NULL,
  `adressline1` varchar(255) collate utf8_unicode_ci default NULL,
  `adressline2` varchar(255) collate utf8_unicode_ci default NULL,
  `crypted_password` varchar(40) collate utf8_unicode_ci default NULL,
  `salt` varchar(40) collate utf8_unicode_ci default NULL,
  `status` varchar(255) collate utf8_unicode_ci default 'user',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `remember_token` varchar(255) collate utf8_unicode_ci default NULL,
  `remember_token_expires_at` datetime default NULL,
  `pin` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `web_tools` (
  `id` int(11) NOT NULL auto_increment,
  `web_tool` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO schema_migrations (version) VALUES ('20100828004311');

INSERT INTO schema_migrations (version) VALUES ('20100828065756');

INSERT INTO schema_migrations (version) VALUES ('20100830012139');

INSERT INTO schema_migrations (version) VALUES ('20100830064301');

INSERT INTO schema_migrations (version) VALUES ('20100830080222');

INSERT INTO schema_migrations (version) VALUES ('20100830080240');

INSERT INTO schema_migrations (version) VALUES ('20100830080300');

INSERT INTO schema_migrations (version) VALUES ('20100830080321');

INSERT INTO schema_migrations (version) VALUES ('20100830080333');

INSERT INTO schema_migrations (version) VALUES ('20100830081115');

INSERT INTO schema_migrations (version) VALUES ('20100831002442');

INSERT INTO schema_migrations (version) VALUES ('20100831041035');

INSERT INTO schema_migrations (version) VALUES ('20100831041101');

INSERT INTO schema_migrations (version) VALUES ('20100831041112');

INSERT INTO schema_migrations (version) VALUES ('20100831041124');

INSERT INTO schema_migrations (version) VALUES ('20100901022359');

INSERT INTO schema_migrations (version) VALUES ('20100901030455');

INSERT INTO schema_migrations (version) VALUES ('20100901030712');

INSERT INTO schema_migrations (version) VALUES ('20100902052507');

INSERT INTO schema_migrations (version) VALUES ('20100902083210');

INSERT INTO schema_migrations (version) VALUES ('20100903014303');

INSERT INTO schema_migrations (version) VALUES ('20100903023013');

INSERT INTO schema_migrations (version) VALUES ('20100903025250');

INSERT INTO schema_migrations (version) VALUES ('20100903060117');

INSERT INTO schema_migrations (version) VALUES ('20100903234849');

INSERT INTO schema_migrations (version) VALUES ('20100904044550');

INSERT INTO schema_migrations (version) VALUES ('20100918010833');

INSERT INTO schema_migrations (version) VALUES ('20100918045559');

INSERT INTO schema_migrations (version) VALUES ('20100921002301');

INSERT INTO schema_migrations (version) VALUES ('20100927080639');

INSERT INTO schema_migrations (version) VALUES ('20100928070559');

INSERT INTO schema_migrations (version) VALUES ('20100928071625');