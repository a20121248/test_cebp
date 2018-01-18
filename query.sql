--Master table
CREATE TABLE `users` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `username` varchar (30) unique,
    `password` varchar(60),
    `email` varchar (50) unique,
    `full_name` varchar (30),
    PRIMARY KEY (`id`)
);

--Master table
CREATE TABLE `roles` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar (30) unique,
    PRIMARY KEY (`id`)
);

--Master table
CREATE TABLE `groups` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar (30) unique,
    PRIMARY KEY (`id`)
);

--Pivot table
CREATE TABLE `role_x_user` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `role_id` int(10) unsigned,
    `user_id` int(10) unsigned,
    PRIMARY KEY (`id`)
);

--Pivot table
CREATE TABLE `group_x_user` (
    `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
    `group_id` int(10) unsigned,
    `user_id` int(10) unsigned,
    PRIMARY KEY (`id`)
);
