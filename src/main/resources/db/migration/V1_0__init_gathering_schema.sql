drop table if exists tb_gathering;
drop table if exists tb_gathering_addr;
drop table if exists tb_gathering_involved_user;
drop table if exists tb_gathering_review;
drop table if exists tb_gathering_category_meta;
drop table if exists tb_gathering_category;
drop table if exists tb_user_favorite_gathering;


create table `codari-gathering`.tb_gathering (
   `gathering_id` bigint(20) NOT NULL AUTO_INCREMENT,
   `user_id` bigint(20) NOT NULL,

   `name` varchar(255) DEFAULT NULL,
   `thumbnail_url` varchar(255) DEFAULT NULL,
   `desc` text DEFAULT NULL,
   `preparations` text DEFAULT NULL,
   `attendance_fee` bigint(20) NOT NULL,
   `deposit` bigint(20) NOT NULL,
   `type` char(1) NOT NULL,
   `status` char(1) DEFAULT NULL,

   `start_datetime` DATETIME DEFAULT NULL,
   `end_datetime` DATETIME DEFAULT NULL,
   `application_deadline_datetime` DATETIME DEFAULT NULL,

   `created_datetime` DATETIME DEFAULT CURRENT_TIMESTAMP,
   `update_datetime` DATETIME NULL ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`gathering_id`)
);

create table `codari-gathering`.tb_gathering_addr (
    `gathering_addr_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `gathering_id` bigint(20) NOT NULL,

    `first_addr` varchar(255) NOT NULL,
    `second_addr` varchar(255) NOT NULL,
    `third_addr` varchar(255) NOT NULL,
    `detail_addr` varchar(255) NOT NULL,

    `latitude` varchar(255) NOT NULL,
    `longitude` varchar(255) NOT NULL,

    `created_datetime` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `update_datetime` DATETIME NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`gathering_addr_id`),
    FOREIGN KEY (`gathering_id`) REFERENCES `tb_gathering` (`gathering_id`)
);

create table `codari-gathering`.tb_gathering_involved_user (
    `gathering_involved_user_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `gathering_id` bigint(20) NOT NULL,
    `user_id` bigint(20) NOT NULL,

    `type` char(1) NOT NULL,

    `created_datetime` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `update_datetime` DATETIME NULL ON UPDATE CURRENT_TIMESTAMP,

    `use_yn` char(1) NOT NULL,
    PRIMARY KEY (`gathering_involved_user_id`),
    FOREIGN KEY (`gathering_id`) REFERENCES `tb_gathering` (`gathering_id`)
);



create table `codari-gathering`.tb_gathering_review (
    `gathering_review_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `gathering_id` bigint(20) NOT NULL,
    `user_id` bigint(20) NOT NULL,

    `desc` text DEFAULT NULL,

    `created_datetime` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `update_datetime` DATETIME NULL ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`gathering_review_id`),
    FOREIGN KEY (`gathering_id`) REFERENCES `tb_gathering` (`gathering_id`)
);

create table `codari-gathering`.tb_gathering_category_meta (
      `gathering_category_meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
      `name` varchar(50) NOT NULL,

      `type` char(1) NOT NULL,

      `created_datetime` DATETIME DEFAULT CURRENT_TIMESTAMP,
      `update_datetime` DATETIME NULL ON UPDATE CURRENT_TIMESTAMP,
      PRIMARY KEY (`gathering_category_meta_id`),
      UNIQUE KEY badge_name_index (name)
);


create table `codari-gathering`.tb_gathering_category (
     `gathering_category_id` bigint(20) NOT NULL AUTO_INCREMENT,
     `gathering_category_meta_id` bigint(20) NOT NULL,
     `gathering_id` bigint(20) NOT NULL,

     `created_datetime` DATETIME DEFAULT CURRENT_TIMESTAMP,
     `update_datetime` DATETIME NULL ON UPDATE CURRENT_TIMESTAMP,
     PRIMARY KEY (`gathering_category_id`),
     FOREIGN KEY (`gathering_category_meta_id`) REFERENCES `tb_gathering_category_meta` (`gathering_category_meta_id`),
     FOREIGN KEY (`gathering_id`) REFERENCES `tb_gathering` (`gathering_id`)
);

create table `codari-gathering`.tb_user_favorite_gathering (
    `user_favorite_gathering_id` bigint(20) NOT NULL AUTO_INCREMENT,
    `user_id` bigint(20) NOT NULL,
    `gathering_id` bigint(20) NOT NULL,

    `created_datetime` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `update_datetime` DATETIME NULL ON UPDATE CURRENT_TIMESTAMP,
    `use_yn` char(1) NOT NULL,
    PRIMARY KEY (`user_favorite_gathering_id`),
    FOREIGN KEY (`gathering_id`) REFERENCES `tb_gathering` (`gathering_id`)
);
