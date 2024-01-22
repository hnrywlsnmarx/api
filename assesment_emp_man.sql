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

 Date: 22/01/2024 14:27:15
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
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'Xenos Lyons', 'Hiroko Webster', 'Willow Burgess', 'eu.placerat.eget@protonmail.couk', '15/05/2024', 0, 'Lajang', 'Sagittis Duis Industries', '10/03/2024');
INSERT INTO `employee` VALUES (2, 'Lucy Phelps', 'Ariana Doyle', 'Cathleen Boyd', 'facilisis.eget.ipsum@outlook.ca', '27/05/2023', 0, 'Lajang', 'Arcu Aliquam Inc.', '12/06/2023');
INSERT INTO `employee` VALUES (3, 'Sierra Bell', 'Nyssa Clay', 'Faith Holden', 'aliquet@yahoo.edu', '01/12/2024', 0, 'Lajang', 'Elit Dictum Corporation', '30/12/2024');
INSERT INTO `employee` VALUES (4, 'Vernon Martinez', 'Maxwell Stafford', 'Lionel Moon', 'parturient.montes.nascetur@hotmail.ca', '18/06/2024', 0, 'Lajang', 'Dapibus Rutrum Limited', '30/09/2024');
INSERT INTO `employee` VALUES (5, 'Naida Hayden', 'Jasper Randolph', 'Dean Tyson', 'tincidunt.nibh@protonmail.org', '02/11/2024', 0, 'Lajang', 'Vitae Purus Associates', '04/10/2024');
INSERT INTO `employee` VALUES (6, 'Constance Brady', 'Wallace Roy', 'Wade Mays', 'eleifend.nec@hotmail.com', '26/07/2024', 0, 'Lajang', 'Diam Eu PC', '09/03/2024');
INSERT INTO `employee` VALUES (7, 'Arden Prince', 'Knox Gonzales', 'Ross Nolan', 'ornare.tortor.at@protonmail.edu', '31/12/2024', 0, 'Lajang', 'Mauris Aliquam LLC', '22/04/2024');
INSERT INTO `employee` VALUES (8, 'Jaime Guerrero', 'Kirestin Pace', 'Maxwell Hess', 'consequat@aol.edu', '19/06/2023', 0, 'Lajang', 'Sapien Aenean Massa Limited', '13/03/2024');
INSERT INTO `employee` VALUES (9, 'Rebekah Mayer', 'Kyle Reilly', 'Kennedy Rowland', 'tellus.phasellus@aol.org', '01/10/2023', 0, 'Lajang', 'Scelerisque Scelerisque LLP', '07/10/2023');
INSERT INTO `employee` VALUES (10, 'Lucas Avery', 'Lana Norton', 'Yen Justice', 'felis.orci@aol.net', '30/09/2024', 0, 'Lajang', 'Vulputate Ullamcorper Inc.', '20/07/2024');
INSERT INTO `employee` VALUES (11, 'Tatiana Fernandez', 'Palmer Hurst', 'Oscar Stanton', 'neque@google.org', '18/02/2023', 0, 'Lajang', 'Euismod Est Corp.', '13/08/2024');
INSERT INTO `employee` VALUES (12, 'Steel Good', 'Skyler Pena', 'Bernard Pearson', 'gravida@yahoo.edu', '28/04/2024', 0, 'Lajang', 'Elit Incorporated', '15/05/2024');
INSERT INTO `employee` VALUES (13, 'Iris Owen', 'Colleen Nixon', 'Abel England', 'orci.lacus@aol.couk', '08/08/2024', 0, 'Lajang', 'Tincidunt Donec Ltd', '19/05/2024');
INSERT INTO `employee` VALUES (14, 'Carl Clay', 'Seth Gonzalez', 'Roanna Roberson', 'duis.volutpat.nunc@aol.com', '05/09/2023', 0, 'Lajang', 'Netus Et Ltd', '18/09/2023');
INSERT INTO `employee` VALUES (15, 'Benedict Barnes', 'Austin Cervantes', 'Quemby Ellison', 'tempor.est@google.couk', '28/08/2024', 0, 'Menikah', 'Et Incorporated', '14/04/2023');
INSERT INTO `employee` VALUES (16, 'Maggy Peterson', 'Maris Bean', 'Uriel Mcintyre', 'erat.volutpat@icloud.edu', '11/01/2025', 0, 'Menikah', 'Consectetuer Adipiscing Elit Associates', '21/05/2024');
INSERT INTO `employee` VALUES (17, 'Jack Clayton', 'Melanie Hogan', 'Sydnee Berger', 'senectus.et@icloud.com', '04/10/2023', 0, 'Menikah', 'Mus Ltd', '12/03/2024');
INSERT INTO `employee` VALUES (18, 'Darrel Murray', 'Wilma Mercer', 'Harriet Cameron', 'iaculis.aliquet.diam@google.ca', '24/05/2023', 0, 'Janda', 'Nunc Mauris Elit Corp.', '26/01/2024');
INSERT INTO `employee` VALUES (19, 'Yuri Bell', 'Evan Bernard', 'Herrod Whitehead', 'libero.proin@outlook.org', '08/07/2023', 0, 'Janda', 'Eget Metus Institute', '09/08/2023');
INSERT INTO `employee` VALUES (20, 'Harper Johnson', 'Raven Mcfarland', 'Hector Watkins', 'non.lacinia@hotmail.couk', '16/01/2024', 0, 'Janda', 'Pede Sagittis Corp.', '09/11/2023');
INSERT INTO `employee` VALUES (21, 'Kalia Ball', 'Laith Johns', 'Kylee Simon', 'risus.quis.diam@hotmail.com', '04/04/2024', 0, 'Janda', 'Lorem Auctor LLC', '19/05/2023');
INSERT INTO `employee` VALUES (22, 'Faith Wilkinson', 'Hollee Macias', 'Nathaniel Webster', 'nunc@google.ca', '31/12/2024', 0, 'Janda', 'Donec Dignissim Magna Consulting', '26/06/2023');
INSERT INTO `employee` VALUES (23, 'Lionel Mooney', 'Iola Huber', 'Simon Pitts', 'turpis.non@outlook.org', '13/01/2025', 0, 'Janda', 'Nibh Quisque Corp.', '19/09/2024');
INSERT INTO `employee` VALUES (24, 'Seth Chambers', 'Lane Blackburn', 'Alfreda Mueller', 'convallis.dolor.quisque@protonmail.com', '18/04/2024', 0, 'Janda', 'Aliquam Gravida Limited', '22/10/2023');
INSERT INTO `employee` VALUES (25, 'Barbara Walters', 'Merritt Klein', 'Iris Mosley', 'dictum.eu.eleifend@icloud.ca', '23/02/2024', 0, 'Menikah', 'Conubia Nostra Institute', '15/07/2023');
INSERT INTO `employee` VALUES (26, 'Zephania Rogers', 'Zoe Schultz', 'September Albert', 'dapibus.rutrum.justo@yahoo.org', '02/05/2024', 0, 'Menikah', 'Eu Dolor PC', '24/12/2024');
INSERT INTO `employee` VALUES (27, 'Rama Jenkins', 'Erica Spence', 'Hall Harding', 'euismod.urna.nullam@protonmail.edu', '29/08/2023', 0, 'Menikah', 'Primis In Company', '24/02/2023');
INSERT INTO `employee` VALUES (28, 'Carla Vance', 'Justina Dale', 'Alfreda Reed', 'elementum.lorem@google.org', '18/08/2024', 0, 'Menikah', 'Aliquam Associates', '23/05/2024');
INSERT INTO `employee` VALUES (29, 'Cooper Ratliff', 'Robin Mccarthy', 'Leonard Hopper', 'nec.eleifend@hotmail.ca', '29/11/2024', 0, 'Menikah', 'Aenean Gravida Associates', '17/04/2024');
INSERT INTO `employee` VALUES (30, 'Hope Rodgers', 'Hayes Owens', 'Ruby Carlson', 'nisi.cum@hotmail.net', '24/10/2023', 0, 'Menikah', 'Nulla Dignissim Industries', '24/10/2023');
INSERT INTO `employee` VALUES (31, 'Gavin Foreman', 'Regina Pratt', 'Kylynn Ruiz', 'eget.metus@google.ca', '28/04/2023', 0, 'Menikah', 'Sed Malesuada Associates', '06/03/2024');
INSERT INTO `employee` VALUES (32, 'Lydia Conway', 'Kasper Burt', 'Ginger Morin', 'lobortis.augue@protonmail.com', '17/06/2023', 0, 'Menikah', 'Cursus Company', '22/08/2024');
INSERT INTO `employee` VALUES (33, 'Patricia Robinson', 'Alana Stanley', 'Mollie Sosa', 'in.faucibus@icloud.net', '03/06/2023', 0, 'Menikah', 'Nunc Quisque Ornare Incorporated', '06/08/2023');
INSERT INTO `employee` VALUES (34, 'Jordan Duran', 'Hilary Cabrera', 'Imani Kent', 'metus.aenean@google.ca', '07/03/2024', 0, 'Menikah', 'Hendrerit Corporation', '18/09/2023');
INSERT INTO `employee` VALUES (35, 'Herman Hayes', 'Juliet Randolph', 'Erin Clark', 'nam.interdum@hotmail.net', '17/06/2023', 0, 'Menikah', 'Ut Nisi A Corp.', '23/05/2024');
INSERT INTO `employee` VALUES (36, 'Laurel Black', 'Cheryl Franklin', 'Byron Mckay', 'ultrices.iaculis@google.com', '29/07/2023', 0, 'Duda', 'Et Eros Industries', '12/06/2023');
INSERT INTO `employee` VALUES (37, 'Garrett Norris', 'Clementine Branch', 'Hunter Kane', 'ut.semper@icloud.net', '25/10/2024', 0, 'Duda', 'Augue Id Limited', '29/05/2023');
INSERT INTO `employee` VALUES (38, 'Damon Simon', 'Odysseus Barnes', 'Curran Mercer', 'morbi.metus@google.org', '13/04/2024', 0, 'Duda', 'Erat Vivamus Nisi Associates', '19/11/2023');
INSERT INTO `employee` VALUES (39, 'Kasimir Wagner', 'Valentine Hebert', 'Cooper Olson', 'ut.mi@aol.net', '24/02/2024', 0, 'Duda', 'Hendrerit Neque In Limited', '11/12/2024');
INSERT INTO `employee` VALUES (40, 'Janna Rowland', 'Angelica Middleton', 'Violet Kennedy', 'purus.sapien@aol.edu', '26/08/2024', 0, 'Duda', 'Quam Elementum Institute', '11/05/2024');
INSERT INTO `employee` VALUES (41, 'Rudyard Bauer', 'Alfonso Barton', 'Hilel Rush', 'curabitur.massa@aol.net', '16/12/2024', 0, 'Duda', 'Cras Associates', '10/04/2023');
INSERT INTO `employee` VALUES (42, 'Adele Monroe', 'Omar Warren', 'Brittany Acevedo', 'enim.nisl.elementum@hotmail.net', '11/08/2024', 0, 'Duda', 'Rutrum Non Corp.', '14/01/2024');
INSERT INTO `employee` VALUES (43, 'Ivory Strong', 'Janna Farmer', 'Julian Bowen', 'molestie@protonmail.net', '13/02/2024', 0, 'Duda', 'Metus Institute', '11/03/2023');
INSERT INTO `employee` VALUES (44, 'Hayes Clay', 'Erich Drake', 'Raja Wilcox', 'odio.semper@icloud.couk', '16/09/2024', 0, 'Duda', 'Rutrum Lorem Ac Limited', '25/05/2023');
INSERT INTO `employee` VALUES (45, 'Freya Caldwell', 'Arsenio Burks', 'Kristen Whitaker', 'ut.semper@icloud.couk', '22/04/2024', 0, 'Duda', 'Non Hendrerit Industries', '07/06/2023');
INSERT INTO `employee` VALUES (46, 'Maggie Finch', 'Buffy Randolph', 'September Warren', 'suspendisse.aliquet.molestie@aol.ca', '09/03/2023', 0, 'Duda', 'Elit Pede Institute', '15/12/2024');
INSERT INTO `employee` VALUES (47, 'Tucker Hess', 'Madonna Crane', 'Lars Guzman', 'vestibulum.massa@icloud.ca', '26/08/2024', 0, 'Duda', 'Ante Ltd', '05/06/2023');
INSERT INTO `employee` VALUES (48, 'Sonya Shaw', 'Joan Potts', 'Murphy Boyd', 'pharetra.nibh.aliquam@icloud.org', '24/12/2023', 0, 'Duda', 'Nisl Nulla Inc.', '26/01/2023');
INSERT INTO `employee` VALUES (49, 'Raya Cross', 'Adrienne Greene', 'Wylie David', 'erat@hotmail.net', '09/09/2024', 0, 'Duda', 'Elementum Lorem Ut Inc.', '25/05/2023');
INSERT INTO `employee` VALUES (50, 'Risa Fletcher', 'Keely Gonzalez', 'Sarah Finch', 'donec.feugiat@google.ca', '10/03/2024', 0, 'Duda', 'Donec Incorporated', '02/01/2025');
INSERT INTO `employee` VALUES (51, 'Raphael Washington', 'Aristotle Bentley', 'Salvador Stanley', 'nulla@google.couk', '16/04/2023', 0, 'Duda', 'Nec Mauris LLC', '20/07/2023');
INSERT INTO `employee` VALUES (52, 'Neil Underwood', 'Jonas Keller', 'Alvin Pennington', 'orci.quis@outlook.edu', '28/07/2023', 0, 'Menikah', 'Erat Incorporated', '19/07/2024');
INSERT INTO `employee` VALUES (53, 'Ray Holman', 'Lane Martinez', 'Gary Conley', 'ut@protonmail.edu', '03/06/2023', 0, 'Menikah', 'Risus Duis LLP', '19/04/2023');
INSERT INTO `employee` VALUES (54, 'Jolie Bruce', 'Clayton Ochoa', 'Tyrone Conner', 'posuere.vulputate.lacus@aol.net', '20/01/2024', 0, 'Menikah', 'Justo Nec LLC', '03/11/2023');
INSERT INTO `employee` VALUES (55, 'Zeph Evans', 'Cynthia Alvarez', 'Shaeleigh Juarez', 'ullamcorper.viverra.maecenas@icloud.ca', '01/09/2024', 0, 'Menikah', 'Placerat Industries', '28/11/2024');
INSERT INTO `employee` VALUES (56, 'Cole Sears', 'Brenna Salazar', 'Adam Mejia', 'posuere.cubilia.curae@aol.com', '28/10/2023', 0, 'Menikah', 'Semper Tellus Foundation', '15/12/2024');
INSERT INTO `employee` VALUES (57, 'Bertha Hopkins', 'Ferris Cobb', 'Rahim Witt', 'nunc@google.ca', '06/07/2023', 0, 'Menikah', 'Nec Tellus PC', '11/08/2023');
INSERT INTO `employee` VALUES (58, 'Austin Hinton', 'Drew Benjamin', 'Quynn Franks', 'orci@outlook.edu', '23/04/2024', 0, 'Menikah', 'Donec Consulting', '28/12/2023');
INSERT INTO `employee` VALUES (59, 'Wang Norman', 'Sage Moses', 'August Winters', 'donec.non.justo@hotmail.edu', '06/09/2024', 0, 'Menikah', 'Tincidunt Industries', '20/01/2024');
INSERT INTO `employee` VALUES (60, 'Robin Bowen', 'Jakeem Vargas', 'Roary Hart', 'per@google.com', '03/09/2023', 0, 'Menikah', 'Maecenas Libero Est Inc.', '10/02/2024');
INSERT INTO `employee` VALUES (61, 'Imani Mclaughlin', 'Patrick Rutledge', 'Yen Mcknight', 'libero.integer@hotmail.couk', '10/09/2023', 0, 'Menikah', 'Lectus Pede Et LLP', '09/10/2024');
INSERT INTO `employee` VALUES (62, 'Garrison Tanner', 'Kirsten Kim', 'Isaiah Gilmore', 'amet.luctus@protonmail.couk', '13/10/2024', 0, 'Menikah', 'Mauris Industries', '21/03/2024');
INSERT INTO `employee` VALUES (63, 'Denton Holloway', 'Cullen Moran', 'Nolan Terrell', 'elit.curabitur.sed@google.org', '10/11/2023', 0, 'Menikah', 'Phasellus Foundation', '09/12/2024');
INSERT INTO `employee` VALUES (64, 'Kiara Ray', 'Cara Herman', 'Brian Barlow', 'nunc@yahoo.com', '03/10/2024', 0, 'Menikah', 'Lorem Incorporated', '24/08/2024');
INSERT INTO `employee` VALUES (65, 'Harlan Lang', 'Gareth Pitts', 'Hashim Harris', 'a@protonmail.edu', '06/11/2024', 0, 'Menikah', 'Id Blandit Corporation', '21/11/2024');
INSERT INTO `employee` VALUES (66, 'Kellie Santana', 'Alexa Glenn', 'Walter Ochoa', 'elit.erat@icloud.edu', '11/11/2024', 0, 'Menikah', 'Magnis Dis Incorporated', '15/04/2024');
INSERT INTO `employee` VALUES (67, 'Leilani Ayala', 'Mariam Spence', 'Jonas Hunt', 'ut@hotmail.net', '17/03/2024', 0, 'Menikah', 'Taciti Sociosqu Ad LLP', '15/09/2023');
INSERT INTO `employee` VALUES (68, 'Mary Williamson', 'Sylvia Hampton', 'Stella Sherman', 'ut.mi@hotmail.org', '22/06/2023', 0, 'Menikah', 'Orci Luctus Incorporated', '30/09/2023');
INSERT INTO `employee` VALUES (69, 'Arden Guerrero', 'Daquan Hinton', 'Ahmed Glass', 'dui.suspendisse.ac@aol.com', '27/11/2023', 0, 'Menikah', 'Id Ante Corp.', '29/04/2023');
INSERT INTO `employee` VALUES (70, 'Katelyn Turner', 'Brianna Barnett', 'Echo Lloyd', 'mi.tempor@aol.net', '14/01/2024', 0, 'Menikah', 'Rhoncus Foundation', '22/11/2023');
INSERT INTO `employee` VALUES (71, 'Quamar Beck', 'Sheila Finley', 'Roary Wiggins', 'orci.in@google.edu', '30/06/2023', 0, 'Menikah', 'Et Arcu PC', '22/01/2023');
INSERT INTO `employee` VALUES (72, 'Kato Finley', 'Calista Mcmahon', 'Paki Mckenzie', 'consequat@protonmail.edu', '26/11/2023', 0, 'Menikah', 'Non Limited', '12/12/2024');
INSERT INTO `employee` VALUES (73, 'Eugenia Noble', 'Jerome Stephens', 'Zahir Gilliam', 'elit.fermentum@yahoo.com', '29/05/2023', 0, 'Menikah', 'Donec Egestas Industries', '14/07/2023');
INSERT INTO `employee` VALUES (74, 'Hedley Rose', 'Armand Spears', 'Susan Armstrong', 'pharetra.nam.ac@google.couk', '28/11/2023', 0, 'Menikah', 'Elit Fermentum Risus PC', '20/01/2024');
INSERT INTO `employee` VALUES (75, 'Shelly Nichols', 'Raven Powell', 'McKenzie Burris', 'posuere.enim@yahoo.org', '20/03/2024', 0, 'Menikah', 'Tellus LLC', '15/06/2023');
INSERT INTO `employee` VALUES (76, 'Brenna Ball', 'Mari Stevenson', 'Kylan Knox', 'urna.convallis@google.com', '06/02/2024', 0, 'Menikah', 'Ornare In Faucibus Inc.', '16/05/2023');
INSERT INTO `employee` VALUES (77, 'Ocean Wheeler', 'Fallon Torres', 'Melinda York', 'consequat.dolor.vitae@yahoo.com', '19/06/2024', 0, 'Menikah', 'Aliquam Rutrum Corp.', '29/09/2024');
INSERT INTO `employee` VALUES (78, 'Kieran Wells', 'Leigh Henson', 'Armand Byers', 'eu.elit@google.com', '02/09/2024', 0, 'Menikah', 'Duis Corporation', '13/05/2024');
INSERT INTO `employee` VALUES (79, 'Ocean Reeves', 'Graham Browning', 'Winifred Boyle', 'cursus.et@protonmail.edu', '24/08/2024', 0, 'Menikah', 'Tempor Est Ac Ltd', '20/01/2025');
INSERT INTO `employee` VALUES (80, 'Gage Silva', 'Odessa Burnett', 'Tate Silva', 'augue.ut.lacus@protonmail.com', '29/11/2024', 0, 'Menikah', 'Dignissim Inc.', '14/08/2023');
INSERT INTO `employee` VALUES (81, 'Lana Rodgers', 'Stephen Cline', 'Wynne Juarez', 'aliquam@google.couk', '15/02/2023', 0, 'Menikah', 'Nam Interdum Corp.', '11/08/2024');
INSERT INTO `employee` VALUES (82, 'Nathan Owen', 'Henry Mccall', 'Gannon Hood', 'magna@google.org', '19/03/2024', 0, 'Menikah', 'Donec Est Nunc Associates', '16/08/2024');
INSERT INTO `employee` VALUES (83, 'Pandora Larsen', 'Isaac Harrison', 'Oleg Lawrence', 'sed.tortor.integer@google.couk', '25/07/2024', 0, 'Menikah', 'A Neque Nullam Institute', '10/04/2024');
INSERT INTO `employee` VALUES (84, 'Raphael Simmons', 'Hiroko Foster', 'Judah Craig', 'eu.lacus@google.couk', '02/07/2023', 0, 'Lajang', 'Mauris Molestie Corp.', '24/11/2024');
INSERT INTO `employee` VALUES (85, 'Ray Small', 'Cody Stuart', 'Francesca Barnett', 'consequat.enim@protonmail.org', '14/12/2024', 0, 'Lajang', 'Sed Pede Ltd', '23/08/2024');
INSERT INTO `employee` VALUES (86, 'Courtney Jenkins', 'Helen Holt', 'Devin Merrill', 'curabitur.ut@yahoo.edu', '03/05/2024', 0, 'Lajang', 'Risus A Ultricies Incorporated', '29/12/2024');
INSERT INTO `employee` VALUES (87, 'Amir Warner', 'Jared Fisher', 'Hamish Wright', 'cum@hotmail.couk', '04/11/2023', 0, 'Lajang', 'Mauris Magna Associates', '27/04/2023');
INSERT INTO `employee` VALUES (88, 'Quemby Lynn', 'Samantha Reilly', 'Aristotle Haney', 'malesuada.vel.venenatis@protonmail.ca', '18/10/2024', 0, 'Lajang', 'Faucibus Leo In Incorporated', '24/04/2023');
INSERT INTO `employee` VALUES (89, 'Wayne Freeman', 'Malik Cruz', 'Zelda Fulton', 'lacus.nulla@aol.edu', '23/09/2024', 0, 'Lajang', 'Metus Sit Industries', '24/01/2023');
INSERT INTO `employee` VALUES (90, 'Lysandra Hicks', 'Lavinia Hamilton', 'Baxter Sweet', 'sit.amet@google.ca', '08/03/2024', 0, 'Lajang', 'Pede Nonummy Ut Incorporated', '07/09/2023');
INSERT INTO `employee` VALUES (91, 'Sophia Eaton', 'Clinton Hardy', 'Mark Deleon', 'posuere@icloud.org', '24/01/2023', 0, 'Lajang', 'Eros Corporation', '22/01/2023');
INSERT INTO `employee` VALUES (92, 'Timon Bell', 'Melyssa Calhoun', 'Breanna Larson', 'mi.lorem.vehicula@icloud.org', '23/04/2023', 0, 'Lajang', 'Ligula Corporation', '04/01/2024');
INSERT INTO `employee` VALUES (93, 'Burton Cardenas', 'Kareem Heath', 'Alexis Carr', 'nibh.lacinia.orci@yahoo.edu', '09/08/2024', 0, 'Lajang', 'Donec Fringilla Donec Ltd', '27/03/2024');
INSERT INTO `employee` VALUES (94, 'Serina Delgado', 'Xenos Cash', 'Oleg Moses', 'ultrices.iaculis@google.net', '22/04/2023', 0, 'Lajang', 'Sit Amet Dapibus Inc.', '05/06/2024');
INSERT INTO `employee` VALUES (95, 'Angela Edwards', 'Hop Winters', 'Tatiana Pittman', 'vestibulum.accumsan.neque@aol.edu', '27/05/2024', 0, 'Lajang', 'Enim Gravida PC', '18/04/2024');
INSERT INTO `employee` VALUES (96, 'Sara O\'donnell', 'Jonas Clarke', 'Kalia Randall', 'purus.gravida@icloud.com', '15/04/2023', 0, 'Lajang', 'Arcu Vel Associates', '09/01/2024');
INSERT INTO `employee` VALUES (97, 'Ariana Howell', 'Chelsea Mullins', 'Darius Patterson', 'congue.a@hotmail.net', '10/06/2024', 0, 'Menikah', 'Scelerisque Mollis Phasellus Consulting', '01/08/2024');
INSERT INTO `employee` VALUES (98, 'Kane Holt', 'Zephania Emerson', 'Tyler Gutierrez', 'adipiscing.mauris@yahoo.ca', '13/06/2024', 0, 'Menikah', 'Lobortis Quam Foundation', '19/05/2024');
INSERT INTO `employee` VALUES (99, 'Samantha Wade', 'Lael Brock', 'Yetta Monroe', 'placerat.velit.quisque@hotmail.couk', '03/02/2023', 0, 'Menikah', 'Vulputate Dui LLC', '24/11/2023');
INSERT INTO `employee` VALUES (100, 'Olympia Randall', 'Virginia Garza', 'Buckminster Chambers', 'facilisis.eget.ipsum@icloud.couk', '30/05/2023', 0, 'Menikah', 'Sapien Gravida Inc.', '11/12/2024');
INSERT INTO `employee` VALUES (101, 'Breanna Washington', 'Prescott Mckee', 'Alan Camacho', 'orci@yahoo.org', '12/11/2024', 0, 'Menikah', 'Aenean Eget Magna LLP', '12/02/2024');
INSERT INTO `employee` VALUES (102, 'hnrywlsn', 'Henry', 'Willson', 'hnrywlsndvlpr@gmail.com', '1977-01-12', 900000000, 'Lajang', NULL, 'OKE');

SET FOREIGN_KEY_CHECKS = 1;
