/*
 Navicat Premium Data Transfer

 Source Server         : aingmaung
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : assesment_emp_man

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 24/01/2024 12:09:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `firstName` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastName` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birthDate` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `basicSalary` bigint(100) NULL DEFAULT NULL,
  `marital_status` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `emp_group` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'Xenos Lyons', 'Hiroko Webster', 'Willow Burgess', 'eu.placerat.eget@protonmail.couk', '1954-10-18T16:30:00.000Z', 100000000, 'Lajang', 'Sagittis Duis Industries', '1983-06-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (2, 'Lucy Phelps', 'Ariana Doyle', 'Cathleen Boyd', 'facilisis.eget.ipsum@outlook.ca', '2001-02-05T17:00:00.000Z', 100000000, 'Lajang', 'Arcu Aliquam Inc.', '2024-01-16T17:00:00.000Z');
INSERT INTO `employee` VALUES (3, 'Sierra Bell', 'Nyssa Clay', 'Faith Holden', 'aliquet@yahoo.edu', '2006-06-29T17:00:00.000Z', 100000000, 'Lajang', 'Elit Dictum Corporation', '2024-01-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (4, 'Vernon Martinez', 'Maxwell Stafford', 'Lionel Moon', 'parturient.montes.nascetur@hotmail.ca', '1982-02-08T17:00:00.000Z', 100000000, 'Lajang', 'Dapibus Rutrum Limited', '2024-01-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (5, 'Naida Hayden', 'Jasper Randolph', 'Dean Tyson', 'tincidunt.nibh@protonmail.org', '1983-06-21T17:00:00.000Z', 100000000, 'Lajang', 'Vitae Purus Associates', '1987-11-25T17:00:00.000Z');
INSERT INTO `employee` VALUES (6, 'Constance Brady', 'Wallace Roy', 'Wade Mays', 'eleifend.nec@hotmail.com', '2024-01-16T17:00:00.000Z', 100000000, 'Lajang', 'Diam Eu PC', '2024-01-22T17:00:00.000Z');
INSERT INTO `employee` VALUES (7, 'Arden Prince', 'Knox Gonzales', 'Ross Nolan', 'ornare.tortor.at@protonmail.edu', '2024-01-08T17:00:00.000Z', 100000000, 'Lajang', 'Mauris Aliquam LLC', '1964-08-04T17:00:00.000Z');
INSERT INTO `employee` VALUES (8, 'Jaime Guerrero', 'Kirestin Pace', 'Maxwell Hess', 'consequat@aol.edu', '2024-01-21T17:00:00.000Z', 100000000, 'Lajang', 'Sapien Aenean Massa Limited', '1991-10-15T17:00:00.000Z');
INSERT INTO `employee` VALUES (9, 'Rebekah Mayer', 'Kyle Reilly', 'Kennedy Rowland', 'tellus.phasellus@aol.org', '1987-11-25T17:00:00.000Z', 100000000, 'Lajang', 'Scelerisque Scelerisque LLP', '2024-01-17T17:00:00.000Z');
INSERT INTO `employee` VALUES (10, 'Lucas Avery', 'Lana Norton', 'Yen Justice', 'felis.orci@aol.net', '2024-01-22T17:00:00.000Z', 100000000, 'Lajang', 'Vulputate Ullamcorper Inc.', '2024-01-10T17:00:00.000Z');
INSERT INTO `employee` VALUES (11, 'Tatiana Fernandez', 'Palmer Hurst', 'Oscar Stanton', 'neque@google.org', '1964-08-04T17:00:00.000Z', 100000000, 'Lajang', 'Euismod Est Corp.', '1954-10-18T16:30:00.000Z');
INSERT INTO `employee` VALUES (12, 'Steel Good', 'Skyler Pena', 'Bernard Pearson', 'gravida@yahoo.edu', '1991-10-15T17:00:00.000Z', 100000000, 'Lajang', 'Elit Incorporated', '2001-02-05T17:00:00.000Z');
INSERT INTO `employee` VALUES (13, 'Iris Owen', 'Colleen Nixon', 'Abel England', 'orci.lacus@aol.couk', '2024-01-17T17:00:00.000Z', 100000000, 'Lajang', 'Tincidunt Donec Ltd', '2006-06-29T17:00:00.000Z');
INSERT INTO `employee` VALUES (14, 'Carl Clay', 'Seth Gonzalez', 'Roanna Roberson', 'duis.volutpat.nunc@aol.com', '2024-01-10T17:00:00.000Z', 100000000, 'Lajang', 'Netus Et Ltd', '1982-02-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (15, 'Benedict Barnes', 'Austin Cervantes', 'Quemby Ellison', 'tempor.est@google.couk', '1954-10-18T16:30:00.000Z', 100000000, 'Menikah', 'Et Incorporated', '1983-06-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (16, 'Maggy Peterson', 'Maris Bean', 'Uriel Mcintyre', 'erat.volutpat@icloud.edu', '2001-02-05T17:00:00.000Z', 100000000, 'Menikah', 'Consectetuer Adipiscing Elit Associates', '2024-01-16T17:00:00.000Z');
INSERT INTO `employee` VALUES (17, 'Jack Clayton', 'Melanie Hogan', 'Sydnee Berger', 'senectus.et@icloud.com', '2006-06-29T17:00:00.000Z', 100000000, 'Menikah', 'Mus Ltd', '2024-01-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (18, 'Darrel Murray', 'Wilma Mercer', 'Harriet Cameron', 'iaculis.aliquet.diam@google.ca', '1982-02-08T17:00:00.000Z', 100000000, 'Janda', 'Nunc Mauris Elit Corp.', '2024-01-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (19, 'Yuri Bell', 'Evan Bernard', 'Herrod Whitehead', 'libero.proin@outlook.org', '1983-06-21T17:00:00.000Z', 100000000, 'Janda', 'Eget Metus Institute', '1987-11-25T17:00:00.000Z');
INSERT INTO `employee` VALUES (20, 'Harper Johnson', 'Raven Mcfarland', 'Hector Watkins', 'non.lacinia@hotmail.couk', '2024-01-16T17:00:00.000Z', 100000000, 'Janda', 'Pede Sagittis Corp.', '2024-01-22T17:00:00.000Z');
INSERT INTO `employee` VALUES (21, 'Kalia Ball', 'Laith Johns', 'Kylee Simon', 'risus.quis.diam@hotmail.com', '2024-01-08T17:00:00.000Z', 100000000, 'Janda', 'Lorem Auctor LLC', '1964-08-04T17:00:00.000Z');
INSERT INTO `employee` VALUES (22, 'Faith Wilkinson', 'Hollee Macias', 'Nathaniel Webster', 'nunc@google.ca', '2024-01-21T17:00:00.000Z', 100000000, 'Janda', 'Donec Dignissim Magna Consulting', '1991-10-15T17:00:00.000Z');
INSERT INTO `employee` VALUES (23, 'Lionel Mooney', 'Iola Huber', 'Simon Pitts', 'turpis.non@outlook.org', '1987-11-25T17:00:00.000Z', 100000000, 'Janda', 'Nibh Quisque Corp.', '2024-01-17T17:00:00.000Z');
INSERT INTO `employee` VALUES (24, 'Seth Chambers', 'Lane Blackburn', 'Alfreda Mueller', 'convallis.dolor.quisque@protonmail.com', '2024-01-22T17:00:00.000Z', 100000000, 'Janda', 'Aliquam Gravida Limited', '2024-01-10T17:00:00.000Z');
INSERT INTO `employee` VALUES (25, 'Barbara Walters', 'Merritt Klein', 'Iris Mosley', 'dictum.eu.eleifend@icloud.ca', '1964-08-04T17:00:00.000Z', 100000000, 'Menikah', 'Conubia Nostra Institute', '1964-08-04T17:00:00.000Z');
INSERT INTO `employee` VALUES (26, 'Zephania Rogers', 'Zoe Schultz', 'September Albert', 'dapibus.rutrum.justo@yahoo.org', '1991-10-15T17:00:00.000Z', 100000000, 'Menikah', 'Eu Dolor PC', '1991-10-15T17:00:00.000Z');
INSERT INTO `employee` VALUES (27, 'Rama Jenkins', 'Erica Spence', 'Hall Harding', 'euismod.urna.nullam@protonmail.edu', '2024-01-17T17:00:00.000Z', 100000000, 'Menikah', 'Primis In Company', '2024-01-17T17:00:00.000Z');
INSERT INTO `employee` VALUES (28, 'Carla Vance', 'Justina Dale', 'Alfreda Reed', 'elementum.lorem@google.org', '2024-01-10T17:00:00.000Z', 100000000, 'Menikah', 'Aliquam Associates', '2024-01-10T17:00:00.000Z');
INSERT INTO `employee` VALUES (29, 'Cooper Ratliff', 'Robin Mccarthy', 'Leonard Hopper', 'nec.eleifend@hotmail.ca', '1954-10-18T16:30:00.000Z', 100000000, 'Menikah', 'Aenean Gravida Associates', '1954-10-18T16:30:00.000Z');
INSERT INTO `employee` VALUES (30, 'Hope Rodgers', 'Hayes Owens', 'Ruby Carlson', 'nisi.cum@hotmail.net', '2001-02-05T17:00:00.000Z', 100000000, 'Menikah', 'Nulla Dignissim Industries', '2001-02-05T17:00:00.000Z');
INSERT INTO `employee` VALUES (31, 'Gavin Foreman', 'Regina Pratt', 'Kylynn Ruiz', 'eget.metus@google.ca', '2006-06-29T17:00:00.000Z', 100000000, 'Menikah', 'Sed Malesuada Associates', '2006-06-29T17:00:00.000Z');
INSERT INTO `employee` VALUES (32, 'Lydia Conway', 'Kasper Burt', 'Ginger Morin', 'lobortis.augue@protonmail.com', '1982-02-08T17:00:00.000Z', 100000000, 'Menikah', 'Cursus Company', '1982-02-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (33, 'Patricia Robinson', 'Alana Stanley', 'Mollie Sosa', 'in.faucibus@icloud.net', '1983-06-21T17:00:00.000Z', 100000000, 'Menikah', 'Nunc Quisque Ornare Incorporated', '1983-06-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (34, 'Jordan Duran', 'Hilary Cabrera', 'Imani Kent', 'metus.aenean@google.ca', '2024-01-16T17:00:00.000Z', 100000000, 'Menikah', 'Hendrerit Corporation', '2024-01-16T17:00:00.000Z');
INSERT INTO `employee` VALUES (35, 'Herman Hayes', 'Juliet Randolph', 'Erin Clark', 'nam.interdum@hotmail.net', '2024-01-08T17:00:00.000Z', 100000000, 'Menikah', 'Ut Nisi A Corp.', '2024-01-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (36, 'Laurel Black', 'Cheryl Franklin', 'Byron Mckay', 'ultrices.iaculis@google.com', '2024-01-21T17:00:00.000Z', 100000000, 'Duda', 'Et Eros Industries', '2024-01-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (37, 'Garrett Norris', 'Clementine Branch', 'Hunter Kane', 'ut.semper@icloud.net', '1987-11-25T17:00:00.000Z', 430000000, 'Duda', 'Augue Id Limited', '1987-11-25T17:00:00.000Z');
INSERT INTO `employee` VALUES (38, 'Damon Simon', 'Odysseus Barnes', 'Curran Mercer', 'morbi.metus@google.org', '2024-01-22T17:00:00.000Z', 430000000, 'Duda', 'Erat Vivamus Nisi Associates', '2024-01-22T17:00:00.000Z');
INSERT INTO `employee` VALUES (39, 'Kasimir Wagner', 'Valentine Hebert', 'Cooper Olson', 'ut.mi@aol.net', '1964-08-04T17:00:00.000Z', 430000000, 'Duda', 'Hendrerit Neque In Limited', '1964-08-04T17:00:00.000Z');
INSERT INTO `employee` VALUES (40, 'Janna Rowland', 'Angelica Middleton', 'Violet Kennedy', 'purus.sapien@aol.edu', '1991-10-15T17:00:00.000Z', 500000000, 'Duda', 'Quam Elementum Institute', '1991-10-15T17:00:00.000Z');
INSERT INTO `employee` VALUES (41, 'Rudyard Bauer', 'Alfonso Barton', 'Hilel Rush', 'curabitur.massa@aol.net', '2024-01-17T17:00:00.000Z', 500000000, 'Duda', 'Cras Associates', '2024-01-17T17:00:00.000Z');
INSERT INTO `employee` VALUES (42, 'Adele Monroe', 'Omar Warren', 'Brittany Acevedo', 'enim.nisl.elementum@hotmail.net', '2024-01-10T17:00:00.000Z', 500000000, 'Duda', 'Rutrum Non Corp.', '2024-01-10T17:00:00.000Z');
INSERT INTO `employee` VALUES (43, 'Ivory Strong', 'Janna Farmer', 'Julian Bowen', 'molestie@protonmail.net', '1954-10-18T16:30:00.000Z', 500000000, 'Duda', 'Metus Institute', '1954-10-18T16:30:00.000Z');
INSERT INTO `employee` VALUES (44, 'Hayes Clay', 'Erich Drake', 'Raja Wilcox', 'odio.semper@icloud.couk', '2001-02-05T17:00:00.000Z', 500000000, 'Duda', 'Rutrum Lorem Ac Limited', '2001-02-05T17:00:00.000Z');
INSERT INTO `employee` VALUES (45, 'Freya Caldwell', 'Arsenio Burks', 'Kristen Whitaker', 'ut.semper@icloud.couk', '2006-06-29T17:00:00.000Z', 500000000, 'Duda', 'Non Hendrerit Industries', '2006-06-29T17:00:00.000Z');
INSERT INTO `employee` VALUES (46, 'Maggie Finch', 'Buffy Randolph', 'September Warren', 'suspendisse.aliquet.molestie@aol.ca', '1982-02-08T17:00:00.000Z', 500000000, 'Duda', 'Elit Pede Institute', '1982-02-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (47, 'Tucker Hess', 'Madonna Crane', 'Lars Guzman', 'vestibulum.massa@icloud.ca', '1983-06-21T17:00:00.000Z', 500000000, 'Duda', 'Ante Ltd', '1983-06-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (48, 'Sonya Shaw', 'Joan Potts', 'Murphy Boyd', 'pharetra.nibh.aliquam@icloud.org', '2024-01-16T17:00:00.000Z', 500000000, 'Duda', 'Nisl Nulla Inc.', '2024-01-16T17:00:00.000Z');
INSERT INTO `employee` VALUES (49, 'Raya Cross', 'Adrienne Greene', 'Wylie David', 'erat@hotmail.net', '2024-01-08T17:00:00.000Z', 500000000, 'Duda', 'Elementum Lorem Ut Inc.', '2024-01-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (50, 'Risa Fletcher', 'Keely Gonzalez', 'Sarah Finch', 'donec.feugiat@google.ca', '2024-01-21T17:00:00.000Z', 500000000, 'Duda', 'Donec Incorporated', '2024-01-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (51, 'Raphael Washington', 'Aristotle Bentley', 'Salvador Stanley', 'nulla@google.couk', '1987-11-25T17:00:00.000Z', 500000000, 'Duda', 'Nec Mauris LLC', '1987-11-25T17:00:00.000Z');
INSERT INTO `employee` VALUES (52, 'Neil Underwood', 'Jonas Keller', 'Alvin Pennington', 'orci.quis@outlook.edu', '2024-01-22T17:00:00.000Z', 1500000, 'Menikah', 'Erat Incorporated', '2024-01-22T17:00:00.000Z');
INSERT INTO `employee` VALUES (53, 'Ray Holman', 'Lane Martinez', 'Gary Conley', 'ut@protonmail.edu', '1964-08-04T17:00:00.000Z', 220000000, 'Menikah', 'Risus Duis LLP', '1964-08-04T17:00:00.000Z');
INSERT INTO `employee` VALUES (54, 'Jolie Bruce', 'Clayton Ochoa', 'Tyrone Conner', 'posuere.vulputate.lacus@aol.net', '1991-10-15T17:00:00.000Z', 220000000, 'Menikah', 'Justo Nec LLC', '1991-10-15T17:00:00.000Z');
INSERT INTO `employee` VALUES (55, 'Zeph Evans', 'Cynthia Alvarez', 'Shaeleigh Juarez', 'ullamcorper.viverra.maecenas@icloud.ca', '2024-01-17T17:00:00.000Z', 220000000, 'Menikah', 'Placerat Industries', '2024-01-17T17:00:00.000Z');
INSERT INTO `employee` VALUES (56, 'Cole Sears', 'Brenna Salazar', 'Adam Mejia', 'posuere.cubilia.curae@aol.com', '2024-01-10T17:00:00.000Z', 220000000, 'Menikah', 'Semper Tellus Foundation', '2024-01-10T17:00:00.000Z');
INSERT INTO `employee` VALUES (57, 'Bertha Hopkins', 'Ferris Cobb', 'Rahim Witt', 'nunc@google.ca', '1954-10-18T16:30:00.000Z', 220000000, 'Menikah', 'Nec Tellus PC', '1954-10-18T16:30:00.000Z');
INSERT INTO `employee` VALUES (58, 'Austin Hinton', 'Drew Benjamin', 'Quynn Franks', 'orci@outlook.edu', '2001-02-05T17:00:00.000Z', 220000000, 'Menikah', 'Donec Consulting', '2001-02-05T17:00:00.000Z');
INSERT INTO `employee` VALUES (59, 'Wang Norman', 'Sage Moses', 'August Winters', 'donec.non.justo@hotmail.edu', '2006-06-29T17:00:00.000Z', 220000000, 'Menikah', 'Tincidunt Industries', '2006-06-29T17:00:00.000Z');
INSERT INTO `employee` VALUES (60, 'Robin Bowen', 'Jakeem Vargas', 'Roary Hart', 'per@google.com', '1982-02-08T17:00:00.000Z', 220000000, 'Menikah', 'Maecenas Libero Est Inc.', '1982-02-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (61, 'Imani Mclaughlin', 'Patrick Rutledge', 'Yen Mcknight', 'libero.integer@hotmail.couk', '1983-06-21T17:00:00.000Z', 35000000, 'Menikah', 'Lectus Pede Et LLP', '1983-06-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (62, 'Garrison Tanner', 'Kirsten Kim', 'Isaiah Gilmore', 'amet.luctus@protonmail.couk', '2024-01-16T17:00:00.000Z', 35000000, 'Menikah', 'Mauris Industries', '2024-01-16T17:00:00.000Z');
INSERT INTO `employee` VALUES (63, 'Denton Holloway', 'Cullen Moran', 'Nolan Terrell', 'elit.curabitur.sed@google.org', '2024-01-08T17:00:00.000Z', 35000000, 'Menikah', 'Phasellus Foundation', '2024-01-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (64, 'Kiara Ray', 'Cara Herman', 'Brian Barlow', 'nunc@yahoo.com', '2024-01-21T17:00:00.000Z', 35000000, 'Menikah', 'Lorem Incorporated', '2024-01-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (65, 'Harlan Lang', 'Gareth Pitts', 'Hashim Harris', 'a@protonmail.edu', '1987-11-25T17:00:00.000Z', 35000000, 'Menikah', 'Id Blandit Corporation', '1987-11-25T17:00:00.000Z');
INSERT INTO `employee` VALUES (66, 'Kellie Santana', 'Alexa Glenn', 'Walter Ochoa', 'elit.erat@icloud.edu', '2024-01-22T17:00:00.000Z', 35000000, 'Menikah', 'Magnis Dis Incorporated', '2024-01-22T17:00:00.000Z');
INSERT INTO `employee` VALUES (67, 'Leilani Ayala', 'Mariam Spence', 'Jonas Hunt', 'ut@hotmail.net', '1964-08-04T17:00:00.000Z', 35000000, 'Menikah', 'Taciti Sociosqu Ad LLP', '1964-08-04T17:00:00.000Z');
INSERT INTO `employee` VALUES (68, 'Mary Williamson', 'Sylvia Hampton', 'Stella Sherman', 'ut.mi@hotmail.org', '1991-10-15T17:00:00.000Z', 35000000, 'Menikah', 'Orci Luctus Incorporated', '1991-10-15T17:00:00.000Z');
INSERT INTO `employee` VALUES (69, 'Arden Guerrero', 'Daquan Hinton', 'Ahmed Glass', 'dui.suspendisse.ac@aol.com', '2024-01-17T17:00:00.000Z', 35000000, 'Menikah', 'Id Ante Corp.', '2024-01-17T17:00:00.000Z');
INSERT INTO `employee` VALUES (70, 'Katelyn Turner', 'Brianna Barnett', 'Echo Lloyd', 'mi.tempor@aol.net', '2024-01-10T17:00:00.000Z', 35000000, 'Menikah', 'Rhoncus Foundation', '2024-01-10T17:00:00.000Z');
INSERT INTO `employee` VALUES (71, 'Quamar Beck', 'Sheila Finley', 'Roary Wiggins', 'orci.in@google.edu', '1954-10-18T16:30:00.000Z', 35000000, 'Menikah', 'Et Arcu PC', '1954-10-18T16:30:00.000Z');
INSERT INTO `employee` VALUES (72, 'Kato Finley', 'Calista Mcmahon', 'Paki Mckenzie', 'consequat@protonmail.edu', '2001-02-05T17:00:00.000Z', 35000000, 'Menikah', 'Non Limited', '2001-02-05T17:00:00.000Z');
INSERT INTO `employee` VALUES (73, 'Eugenia Noble', 'Jerome Stephens', 'Zahir Gilliam', 'elit.fermentum@yahoo.com', '2006-06-29T17:00:00.000Z', 35000000, 'Menikah', 'Donec Egestas Industries', '2006-06-29T17:00:00.000Z');
INSERT INTO `employee` VALUES (74, 'Hedley Rose', 'Armand Spears', 'Susan Armstrong', 'pharetra.nam.ac@google.couk', '1982-02-08T17:00:00.000Z', 35000000, 'Menikah', 'Elit Fermentum Risus PC', '1982-02-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (75, 'Shelly Nichols', 'Raven Powell', 'McKenzie Burris', 'posuere.enim@yahoo.org', '1983-06-21T17:00:00.000Z', 35000000, 'Menikah', 'Tellus LLC', '1983-06-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (76, 'Brenna Ball', 'Mari Stevenson', 'Kylan Knox', 'urna.convallis@google.com', '2024-01-16T17:00:00.000Z', 35000000, 'Menikah', 'Ornare In Faucibus Inc.', '2024-01-16T17:00:00.000Z');
INSERT INTO `employee` VALUES (77, 'Ocean Wheeler', 'Fallon Torres', 'Melinda York', 'consequat.dolor.vitae@yahoo.com', '2024-01-08T17:00:00.000Z', 35000000, 'Menikah', 'Aliquam Rutrum Corp.', '2024-01-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (78, 'Kieran Wells', 'Leigh Henson', 'Armand Byers', 'eu.elit@google.com', '2024-01-21T17:00:00.000Z', 35000000, 'Menikah', 'Duis Corporation', '2024-01-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (79, 'Ocean Reeves', 'Graham Browning', 'Winifred Boyle', 'cursus.et@protonmail.edu', '1987-11-25T17:00:00.000Z', 35000000, 'Menikah', 'Tempor Est Ac Ltd', '1987-11-25T17:00:00.000Z');
INSERT INTO `employee` VALUES (80, 'Gage Silva', 'Odessa Burnett', 'Tate Silva', 'augue.ut.lacus@protonmail.com', '2024-01-22T17:00:00.000Z', 35000000, 'Menikah', 'Dignissim Inc.', '2024-01-22T17:00:00.000Z');
INSERT INTO `employee` VALUES (81, 'Lana Rodgers', 'Stephen Cline', 'Wynne Juarez', 'aliquam@google.couk', '1964-08-04T17:00:00.000Z', 35000000, 'Menikah', 'Nam Interdum Corp.', '1954-10-18T16:30:00.000Z');
INSERT INTO `employee` VALUES (82, 'Nathan Owen', 'Henry Mccall', 'Gannon Hood', 'magna@google.org', '1991-10-15T17:00:00.000Z', 35000000, 'Menikah', 'Donec Est Nunc Associates', '2001-02-05T17:00:00.000Z');
INSERT INTO `employee` VALUES (83, 'Pandora Larsen', 'Isaac Harrison', 'Oleg Lawrence', 'sed.tortor.integer@google.couk', '2024-01-17T17:00:00.000Z', 35000000, 'Menikah', 'A Neque Nullam Institute', '2006-06-29T17:00:00.000Z');
INSERT INTO `employee` VALUES (84, 'Raphael Simmons', 'Hiroko Foster', 'Judah Craig', 'eu.lacus@google.couk', '2024-01-10T17:00:00.000Z', 35000000, 'Lajang', 'Mauris Molestie Corp.', '1982-02-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (85, 'Ray Small', 'Cody Stuart', 'Francesca Barnett', 'consequat.enim@protonmail.org', '1954-10-18T16:30:00.000Z', 35000000, 'Lajang', 'Sed Pede Ltd', '1983-06-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (86, 'Courtney Jenkins', 'Helen Holt', 'Devin Merrill', 'curabitur.ut@yahoo.edu', '2001-02-05T17:00:00.000Z', 35000000, 'Lajang', 'Risus A Ultricies Incorporated', '2024-01-16T17:00:00.000Z');
INSERT INTO `employee` VALUES (87, 'Amir Warner', 'Jared Fisher', 'Hamish Wright', 'cum@hotmail.couk', '2006-06-29T17:00:00.000Z', 35000000, 'Lajang', 'Mauris Magna Associates', '2024-01-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (88, 'Quemby Lynn', 'Samantha Reilly', 'Aristotle Haney', 'malesuada.vel.venenatis@protonmail.ca', '1982-02-08T17:00:00.000Z', 35000000, 'Lajang', 'Faucibus Leo In Incorporated', '2024-01-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (89, 'Wayne Freeman', 'Malik Cruz', 'Zelda Fulton', 'lacus.nulla@aol.edu', '1983-06-21T17:00:00.000Z', 35000000, 'Lajang', 'Metus Sit Industries', '1987-11-25T17:00:00.000Z');
INSERT INTO `employee` VALUES (90, 'Lysandra Hicks', 'Lavinia Hamilton', 'Baxter Sweet', 'sit.amet@google.ca', '2024-01-16T17:00:00.000Z', 35000000, 'Lajang', 'Pede Nonummy Ut Incorporated', '2024-01-22T17:00:00.000Z');
INSERT INTO `employee` VALUES (91, 'Sophia Eaton', 'Clinton Hardy', 'Mark Deleon', 'posuere@icloud.org', '2024-01-08T17:00:00.000Z', 35000000, 'Lajang', 'Eros Corporation', '1964-08-04T17:00:00.000Z');
INSERT INTO `employee` VALUES (92, 'Timon Bell', 'Melyssa Calhoun', 'Breanna Larson', 'mi.lorem.vehicula@icloud.org', '2024-01-21T17:00:00.000Z', 35000000, 'Lajang', 'Ligula Corporation', '1991-10-15T17:00:00.000Z');
INSERT INTO `employee` VALUES (93, 'Burton Cardenas', 'Kareem Heath', 'Alexis Carr', 'nibh.lacinia.orci@yahoo.edu', '1987-11-25T17:00:00.000Z', 35000000, 'Lajang', 'Donec Fringilla Donec Ltd', '2024-01-17T17:00:00.000Z');
INSERT INTO `employee` VALUES (94, 'Serina Delgado', 'Xenos Cash', 'Oleg Moses', 'ultrices.iaculis@google.net', '2024-01-22T17:00:00.000Z', 35000000, 'Lajang', 'Sit Amet Dapibus Inc.', '2024-01-10T17:00:00.000Z');
INSERT INTO `employee` VALUES (95, 'Angela Edwards', 'Hop Winters', 'Tatiana Pittman', 'vestibulum.accumsan.neque@aol.edu', '1954-10-18T16:30:00.000Z', 35000000, 'Lajang', 'Enim Gravida PC', '1954-10-18T16:30:00.000Z');
INSERT INTO `employee` VALUES (96, 'Sara O\'donnell', 'Jonas Clarke', 'Kalia Randall', 'purus.gravida@icloud.com', '2001-02-05T17:00:00.000Z', 35000000, 'Lajang', 'Arcu Vel Associates', '2001-02-05T17:00:00.000Z');
INSERT INTO `employee` VALUES (97, 'Ariana Howell', 'Chelsea Mullins', 'Darius Patterson', 'congue.a@hotmail.net', '2006-06-29T17:00:00.000Z', 35000000, 'Menikah', 'Scelerisque Mollis Phasellus Consulting', '2006-06-29T17:00:00.000Z');
INSERT INTO `employee` VALUES (98, 'Kane Holt', 'Zephania Emerson', 'Tyler Gutierrez', 'adipiscing.mauris@yahoo.ca', '1982-02-08T17:00:00.000Z', 35000000, 'Menikah', 'Lobortis Quam Foundation', '1982-02-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (99, 'Samantha Wade', 'Lael Brock', 'Yetta Monroe', 'placerat.velit.quisque@hotmail.couk', '1983-06-21T17:00:00.000Z', 35000000, 'Menikah', 'Vulputate Dui LLC', '1983-06-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (100, 'Olympia Randall', 'Virginia Garza', 'Buckminster Chambers', 'facilisis.eget.ipsum@icloud.couk', '2024-01-16T17:00:00.000Z', 35000000, 'Menikah', 'Sapien Gravida Inc.', '2024-01-16T17:00:00.000Z');
INSERT INTO `employee` VALUES (101, 'Breanna Washington', 'Prescott Mckee', 'Alan Camacho', 'orci@yahoo.org', '2024-01-08T17:00:00.000Z', 35000000, 'Menikah', 'Aenean Eget Magna LLP', '2024-01-08T17:00:00.000Z');
INSERT INTO `employee` VALUES (102, 'hnrywlsn', 'Henry', 'Willson', 'hnrywlsndvlpr@gmail.com', '2024-01-21T17:00:00.000Z', 900000000, 'Lajang', NULL, '2024-01-21T17:00:00.000Z');
INSERT INTO `employee` VALUES (103, 'raminah', 'Raminah OKE', 'OKE Raminah', 'saprimasakaer@gmail.com', '21T17:00:00.000Z', 2000000000, 'Janda', NULL, '1987-11-25T17:00:00.000Z');
INSERT INTO `employee` VALUES (104, 'rambo', 'Rambo Durian', 'Runtuh opet', 'h@hhfae.com', '1954-10-18T16:30:00.000Z', 4000000000, 'Janda', 'PT SLANK', '2024-01-22T17:00:00.000Z');
INSERT INTO `employee` VALUES (108, 'hnrywlsn', 'Dapit', 'Rombang', 'hnrywlsndvlpr@gmail.com', '2001-02-05T17:00:00.000Z', 122222222222222, 'Lajang', 'PT AOT', '1964-08-04T17:00:00.000Z');
INSERT INTO `employee` VALUES (109, 'hnrywlsnx', 'Ramay', 'Galeri', 'feer@gmail.com', '2006-06-29T17:00:00.000Z', 9223372036854775807, 'Menikah', 'PT OADI', '1991-10-15T17:00:00.000Z');
INSERT INTO `employee` VALUES (110, 'sdasdds', 'ferdasd', 'feradasd', 'hnrywlsndvlpr@gmail.com', '1982-02-08T17:00:00.000Z', 124213421332, 'Menikah', 'PT ASA', '2024-01-17T17:00:00.000Z');
INSERT INTO `employee` VALUES (111, 'dfsdfdsf', 'eedda', 'erwasdasd', 'hnrywlsndvlpr@gmail.com', '1983-06-21T17:00:00.000Z', 21312421312, 'Duda', 'PT OADI', '2024-01-10T17:00:00.000Z');
INSERT INTO `employee` VALUES (112, 'asdasd', 'Henry', 'Willson', 'hnrywlsndvlpr@gmail.com', '2024-01-16T17:00:00.000Z', 1231231231, 'Lajang', '', '1954-10-18T16:30:00.000Z');
INSERT INTO `employee` VALUES (113, 'asdasdsad', 'asdasd', 'Willson', 'hnrywlsndvlpr@gmail.com', '2024-01-08T17:00:00.000Z', 123123123123, 'Janda', '', '2001-02-05T17:00:00.000Z');
INSERT INTO `employee` VALUES (114, 'hnrywlsn', 'Henry', 'Willson', 'hnrywlsndvlpr@gmail.com', '2024-01-21T17:00:00.000Z', 123123123, 'Janda', 'Three', '2006-06-29T17:00:00.000Z');
INSERT INTO `employee` VALUES (115, 'maatselect', 'Kumprung', 'Emang', 'asdead@gmail.com', '1987-11-25T17:00:00.000Z', 33412324123, 'Duda', 'Water Seven', '1987-11-25T17:00:00.000Z');
INSERT INTO `employee` VALUES (116, 'asdasd', 'dasdasd', 'sasdsad', 'asdasdad', '2024-01-22T17:00:00.000Z', 1231231231, 'Menikah', 'Skypeia', '2024-01-22T17:00:00.000Z');
INSERT INTO `employee` VALUES (117, 'asdasd', 'eEdaref', 'zsfea', 'hnrywlsndvlpr@gmail.com', '1964-08-04T17:00:00.000Z', 31231242131, 'Duda', 'Enies Lobby', '1964-08-04T17:00:00.000Z');
INSERT INTO `employee` VALUES (118, 'wedeasd', 'saredasd', 'aasdecasd', 'saprimasakaer@gmail.com', '1991-10-15T17:00:00.000Z', 1321232, 'Janda', 'Santoryuu', '1991-10-15T17:00:00.000Z');
INSERT INTO `employee` VALUES (119, 'adsdas', 'sdasdas', 'asdasdas', 'saadsdasd', '2024-01-17T17:00:00.000Z', 2323123, 'Menikah', 'Enies Lobby', '2024-01-17T17:00:00.000Z');
INSERT INTO `employee` VALUES (120, '1asdasdasd', 'sdasadsd', 'adasdasda', 'hnrywlsndvlpr@gmail.com', '2024-01-10T17:00:00.000Z', 21312323, 'Janda', 'Skypeia', '2024-01-10T17:00:00.000Z');
INSERT INTO `employee` VALUES (121, 'vdsewdfsd', 'rgrwasd', 'hrwwerewf', 'hnrywlsndvlpr@gmail.com', '2002-02-12T17:00:00.000Z', 2133123123, 'Janda', 'Genkidama', '2005-06-20T17:00:00.000Z');

SET FOREIGN_KEY_CHECKS = 1;
