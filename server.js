const express = require('express');
const connection = require('./library/database.js');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const PORT = 3000;
const router = express.Router();

app.use(cors());

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Headers', '*');
  next();
});

const employees = [
	{
		"userName": "Xenos Lyons",
		"firstName": "Hiroko Webster",
		"lastName": "Willow Burgess",
		"email": "eu.placerat.eget@protonmail.couk",
		"birthDate": "15/05/2024",
		"basicSalary": "-Rp77.418,34",
		"status": "Lajang",
		"group": "Sagittis Duis Industries",
		"description": "10/03/2024"
	},
	{
		"userName": "Lucy Phelps",
		"firstName": "Ariana Doyle",
		"lastName": "Cathleen Boyd",
		"email": "facilisis.eget.ipsum@outlook.ca",
		"birthDate": "27/05/2023",
		"basicSalary": "Rp83.275,94",
		"status": "Menikah",
		"group": "Arcu Aliquam Inc.",
		"description": "12/06/2023"
	},
	{
		"userName": "Sierra Bell",
		"firstName": "Nyssa Clay",
		"lastName": "Faith Holden",
		"email": "aliquet@yahoo.edu",
		"birthDate": "01/12/2024",
		"basicSalary": "-Rp99.248,05",
		"status": "Menikah",
		"group": "Elit Dictum Corporation",
		"description": "30/12/2024"
	},
	{
		"userName": "Vernon Martinez",
		"firstName": "Maxwell Stafford",
		"lastName": "Lionel Moon",
		"email": "parturient.montes.nascetur@hotmail.ca",
		"birthDate": "18/06/2024",
		"basicSalary": "Rp84.839,99",
		"status": "Menikah",
		"group": "Dapibus Rutrum Limited",
		"description": "30/09/2024"
	},
	{
		"userName": "Naida Hayden",
		"firstName": "Jasper Randolph",
		"lastName": "Dean Tyson",
		"email": "tincidunt.nibh@protonmail.org",
		"birthDate": "02/11/2024",
		"basicSalary": "Rp69.427,14",
		"status": "Menikah",
		"group": "Vitae Purus Associates",
		"description": "04/10/2024"
	},
	{
		"userName": "Constance Brady",
		"firstName": "Wallace Roy",
		"lastName": "Wade Mays",
		"email": "eleifend.nec@hotmail.com",
		"birthDate": "26/07/2024",
		"basicSalary": "-Rp19.216,20",
		"status": "Menikah",
		"group": "Diam Eu PC",
		"description": "09/03/2024"
	},
	{
		"userName": "Arden Prince",
		"firstName": "Knox Gonzales",
		"lastName": "Ross Nolan",
		"email": "ornare.tortor.at@protonmail.edu",
		"birthDate": "31/12/2024",
		"basicSalary": "-Rp63.519,85",
		"status": "Menikah",
		"group": "Mauris Aliquam LLC",
		"description": "22/04/2024"
	},
	{
		"userName": "Jaime Guerrero",
		"firstName": "Kirestin Pace",
		"lastName": "Maxwell Hess",
		"email": "consequat@aol.edu",
		"birthDate": "19/06/2023",
		"basicSalary": "-Rp96.007,91",
		"status": "Menikah",
		"group": "Sapien Aenean Massa Limited",
		"description": "13/03/2024"
	},
	{
		"userName": "Rebekah Mayer",
		"firstName": "Kyle Reilly",
		"lastName": "Kennedy Rowland",
		"email": "tellus.phasellus@aol.org",
		"birthDate": "01/10/2023",
		"basicSalary": "-Rp5.689,97",
		"status": "Menikah",
		"group": "Scelerisque Scelerisque LLP",
		"description": "07/10/2023"
	},
	{
		"userName": "Lucas Avery",
		"firstName": "Lana Norton",
		"lastName": "Yen Justice",
		"email": "felis.orci@aol.net",
		"birthDate": "30/09/2024",
		"basicSalary": "-Rp51.369,88",
		"status": "Menikah",
		"group": "Vulputate Ullamcorper Inc.",
		"description": "20/07/2024"
	},
	{
		"userName": "Tatiana Fernandez",
		"firstName": "Palmer Hurst",
		"lastName": "Oscar Stanton",
		"email": "neque@google.org",
		"birthDate": "18/02/2023",
		"basicSalary": "-Rp76.076,86",
		"status": "Menikah",
		"group": "Euismod Est Corp.",
		"description": "13/08/2024"
	},
	{
		"userName": "Steel Good",
		"firstName": "Skyler Pena",
		"lastName": "Bernard Pearson",
		"email": "gravida@yahoo.edu",
		"birthDate": "28/04/2024",
		"basicSalary": "Rp95.133,40",
		"status": "Menikah",
		"group": "Elit Incorporated",
		"description": "15/05/2024"
	},
	{
		 
		"userName": "Iris Owen",
		"firstName": "Colleen Nixon",
		"lastName": "Abel England",
		"email": "orci.lacus@aol.couk",
		"birthDate": "08/08/2024",
		"basicSalary": "-Rp22.239,91",
		"status": "Menikah",
		"group": "Tincidunt Donec Ltd",
		"description": "19/05/2024"
	},
	{
		 
		"userName": "Carl Clay",
		"firstName": "Seth Gonzalez",
		"lastName": "Roanna Roberson",
		"email": "duis.volutpat.nunc@aol.com",
		"birthDate": "05/09/2023",
		"basicSalary": "-Rp92.123,95",
		"status": "Menikah",
		"group": "Netus Et Ltd",
		"description": "18/09/2023"
	},
	{
		"userName": "Benedict Barnes",
		"firstName": "Austin Cervantes",
		"lastName": "Quemby Ellison",
		"email": "tempor.est@google.couk",
		"birthDate": "28/08/2024",
		"basicSalary": "-Rp89.561,00",
		"status": "Menikah",
		"group": "Et Incorporated",
		"description": "14/04/2023"
	},
	{
		"userName": "Maggy Peterson",
		"firstName": "Maris Bean",
		"lastName": "Uriel Mcintyre",
		"email": "erat.volutpat@icloud.edu",
		"birthDate": "11/01/2025",
		"basicSalary": "Rp53.093,36",
		"status": "Menikah",
		"group": "Consectetuer Adipiscing Elit Associates",
		"description": "21/05/2024"
	},
	{
		"userName": "Jack Clayton",
		"firstName": "Melanie Hogan",
		"lastName": "Sydnee Berger",
		"email": "senectus.et@icloud.com",
		"birthDate": "04/10/2023",
		"basicSalary": "Rp30.510,41",
		"status": "Menikah",
		"group": "Mus Ltd",
		"description": "12/03/2024"
	},
	{
		"userName": "Darrel Murray",
		"firstName": "Wilma Mercer",
		"lastName": "Harriet Cameron",
		"email": "iaculis.aliquet.diam@google.ca",
		"birthDate": "24/05/2023",
		"basicSalary": "Rp83.731,31",
		"status": "Menikah",
		"group": "Nunc Mauris Elit Corp.",
		"description": "26/01/2024"
	},
	{
		"userName": "Yuri Bell",
		"firstName": "Evan Bernard",
		"lastName": "Herrod Whitehead",
		"email": "libero.proin@outlook.org",
		"birthDate": "08/07/2023",
		"basicSalary": "-Rp61.635,86",
		"status": "Menikah",
		"group": "Eget Metus Institute",
		"description": "09/08/2023"
	},
	{
		"userName": "Harper Johnson",
		"firstName": "Raven Mcfarland",
		"lastName": "Hector Watkins",
		"email": "non.lacinia@hotmail.couk",
		"birthDate": "16/01/2024",
		"basicSalary": "Rp97.618,32",
		"status": "Menikah",
		"group": "Pede Sagittis Corp.",
		"description": "09/11/2023"
	},
	{
		"userName": "Kalia Ball",
		"firstName": "Laith Johns",
		"lastName": "Kylee Simon",
		"email": "risus.quis.diam@hotmail.com",
		"birthDate": "04/04/2024",
		"basicSalary": "Rp15.006,43",
		"status": "Menikah",
		"group": "Lorem Auctor LLC",
		"description": "19/05/2023"
	},
	{
		"userName": "Faith Wilkinson",
		"firstName": "Hollee Macias",
		"lastName": "Nathaniel Webster",
		"email": "nunc@google.ca",
		"birthDate": "31/12/2024",
		"basicSalary": "Rp63.875,88",
		"status": "Menikah",
		"group": "Donec Dignissim Magna Consulting",
		"description": "26/06/2023"
	},
	{
		"userName": "Lionel Mooney",
		"firstName": "Iola Huber",
		"lastName": "Simon Pitts",
		"email": "turpis.non@outlook.org",
		"birthDate": "13/01/2025",
		"basicSalary": "-Rp84.057,82",
		"status": "Menikah",
		"group": "Nibh Quisque Corp.",
		"description": "19/09/2024"
	},
	{
		"userName": "Seth Chambers",
		"firstName": "Lane Blackburn",
		"lastName": "Alfreda Mueller",
		"email": "convallis.dolor.quisque@protonmail.com",
		"birthDate": "18/04/2024",
		"basicSalary": "-Rp41.348,23",
		"status": "Menikah",
		"group": "Aliquam Gravida Limited",
		"description": "22/10/2023"
	},
	{
		"userName": "Barbara Walters",
		"firstName": "Merritt Klein",
		"lastName": "Iris Mosley",
		"email": "dictum.eu.eleifend@icloud.ca",
		"birthDate": "23/02/2024",
		"basicSalary": "-Rp22.230,79",
		"status": "Menikah",
		"group": "Conubia Nostra Institute",
		"description": "15/07/2023"
	},
	{
		"userName": "Zephania Rogers",
		"firstName": "Zoe Schultz",
		"lastName": "September Albert",
		"email": "dapibus.rutrum.justo@yahoo.org",
		"birthDate": "02/05/2024",
		"basicSalary": "-Rp72.145,44",
		"status": "Menikah",
		"group": "Eu Dolor PC",
		"description": "24/12/2024"
	},
	{
		"userName": "Rama Jenkins",
		"firstName": "Erica Spence",
		"lastName": "Hall Harding",
		"email": "euismod.urna.nullam@protonmail.edu",
		"birthDate": "29/08/2023",
		"basicSalary": "Rp67.162,89",
		"status": "Menikah",
		"group": "Primis In Company",
		"description": "24/02/2023"
	},
	{
		"userName": "Carla Vance",
		"firstName": "Justina Dale",
		"lastName": "Alfreda Reed",
		"email": "elementum.lorem@google.org",
		"birthDate": "18/08/2024",
		"basicSalary": "-Rp60.076,58",
		"status": "Menikah",
		"group": "Aliquam Associates",
		"description": "23/05/2024"
	},
	{
		"userName": "Cooper Ratliff",
		"firstName": "Robin Mccarthy",
		"lastName": "Leonard Hopper",
		"email": "nec.eleifend@hotmail.ca",
		"birthDate": "29/11/2024",
		"basicSalary": "Rp37.086,02",
		"status": "Menikah",
		"group": "Aenean Gravida Associates",
		"description": "17/04/2024"
	},
	{
		"userName": "Hope Rodgers",
		"firstName": "Hayes Owens",
		"lastName": "Ruby Carlson",
		"email": "nisi.cum@hotmail.net",
		"birthDate": "24/10/2023",
		"basicSalary": "Rp7.100,54",
		"status": "Menikah",
		"group": "Nulla Dignissim Industries",
		"description": "24/10/2023"
	},
	{
		"userName": "Gavin Foreman",
		"firstName": "Regina Pratt",
		"lastName": "Kylynn Ruiz",
		"email": "eget.metus@google.ca",
		"birthDate": "28/04/2023",
		"basicSalary": "-Rp77.016,01",
		"status": "Menikah",
		"group": "Sed Malesuada Associates",
		"description": "06/03/2024"
	},
	{
		"userName": "Lydia Conway",
		"firstName": "Kasper Burt",
		"lastName": "Ginger Morin",
		"email": "lobortis.augue@protonmail.com",
		"birthDate": "17/06/2023",
		"basicSalary": "-Rp57.287,44",
		"status": "Menikah",
		"group": "Cursus Company",
		"description": "22/08/2024"
	},
	{
		"userName": "Patricia Robinson",
		"firstName": "Alana Stanley",
		"lastName": "Mollie Sosa",
		"email": "in.faucibus@icloud.net",
		"birthDate": "03/06/2023",
		"basicSalary": "-Rp28.125,68",
		"status": "Menikah",
		"group": "Nunc Quisque Ornare Incorporated",
		"description": "06/08/2023"
	},
	{
		"userName": "Jordan Duran",
		"firstName": "Hilary Cabrera",
		"lastName": "Imani Kent",
		"email": "metus.aenean@google.ca",
		"birthDate": "07/03/2024",
		"basicSalary": "-Rp29.037,68",
		"status": "Menikah",
		"group": "Hendrerit Corporation",
		"description": "18/09/2023"
	},
	{
		"userName": "Herman Hayes",
		"firstName": "Juliet Randolph",
		"lastName": "Erin Clark",
		"email": "nam.interdum@hotmail.net",
		"birthDate": "17/06/2023",
		"basicSalary": "Rp61.088,94",
		"status": "Menikah",
		"group": "Ut Nisi A Corp.",
		"description": "23/05/2024"
	},
	{
		"userName": "Laurel Black",
		"firstName": "Cheryl Franklin",
		"lastName": "Byron Mckay",
		"email": "ultrices.iaculis@google.com",
		"birthDate": "29/07/2023",
		"basicSalary": "Rp52.803,81",
		"status": "Menikah",
		"group": "Et Eros Industries",
		"description": "12/06/2023"
	},
	{
		"userName": "Garrett Norris",
		"firstName": "Clementine Branch",
		"lastName": "Hunter Kane",
		"email": "ut.semper@icloud.net",
		"birthDate": "25/10/2024",
		"basicSalary": "Rp71.630,78",
		"status": "Menikah",
		"group": "Augue Id Limited",
		"description": "29/05/2023"
	},
	{
		"userName": "Damon Simon",
		"firstName": "Odysseus Barnes",
		"lastName": "Curran Mercer",
		"email": "morbi.metus@google.org",
		"birthDate": "13/04/2024",
		"basicSalary": "Rp42.882,10",
		"status": "Menikah",
		"group": "Erat Vivamus Nisi Associates",
		"description": "19/11/2023"
	},
	{
		"userName": "Kasimir Wagner",
		"firstName": "Valentine Hebert",
		"lastName": "Cooper Olson",
		"email": "ut.mi@aol.net",
		"birthDate": "24/02/2024",
		"basicSalary": "Rp29.714,10",
		"status": "Menikah",
		"group": "Hendrerit Neque In Limited",
		"description": "11/12/2024"
	},
	{
		"userName": "Janna Rowland",
		"firstName": "Angelica Middleton",
		"lastName": "Violet Kennedy",
		"email": "purus.sapien@aol.edu",
		"birthDate": "26/08/2024",
		"basicSalary": "-Rp91.172,48",
		"status": "Menikah",
		"group": "Quam Elementum Institute",
		"description": "11/05/2024"
	},
	{
		"userName": "Rudyard Bauer",
		"firstName": "Alfonso Barton",
		"lastName": "Hilel Rush",
		"email": "curabitur.massa@aol.net",
		"birthDate": "16/12/2024",
		"basicSalary": "-Rp89.228,95",
		"status": "Menikah",
		"group": "Cras Associates",
		"description": "10/04/2023"
	},
	{
		"userName": "Adele Monroe",
		"firstName": "Omar Warren",
		"lastName": "Brittany Acevedo",
		"email": "enim.nisl.elementum@hotmail.net",
		"birthDate": "11/08/2024",
		"basicSalary": "Rp52.688,59",
		"status": "Menikah",
		"group": "Rutrum Non Corp.",
		"description": "14/01/2024"
	},
	{
		"userName": "Ivory Strong",
		"firstName": "Janna Farmer",
		"lastName": "Julian Bowen",
		"email": "molestie@protonmail.net",
		"birthDate": "13/02/2024",
		"basicSalary": "Rp50.159,53",
		"status": "Menikah",
		"group": "Metus Institute",
		"description": "11/03/2023"
	},
	{
		"userName": "Hayes Clay",
		"firstName": "Erich Drake",
		"lastName": "Raja Wilcox",
		"email": "odio.semper@icloud.couk",
		"birthDate": "16/09/2024",
		"basicSalary": "Rp93.127,56",
		"status": "Menikah",
		"group": "Rutrum Lorem Ac Limited",
		"description": "25/05/2023"
	},
	{
		"userName": "Freya Caldwell",
		"firstName": "Arsenio Burks",
		"lastName": "Kristen Whitaker",
		"email": "ut.semper@icloud.couk",
		"birthDate": "22/04/2024",
		"basicSalary": "Rp29.598,58",
		"status": "Menikah",
		"group": "Non Hendrerit Industries",
		"description": "07/06/2023"
	},
	{
		"userName": "Maggie Finch",
		"firstName": "Buffy Randolph",
		"lastName": "September Warren",
		"email": "suspendisse.aliquet.molestie@aol.ca",
		"birthDate": "09/03/2023",
		"basicSalary": "Rp77.805,30",
		"status": "Menikah",
		"group": "Elit Pede Institute",
		"description": "15/12/2024"
	},
	{
		"userName": "Tucker Hess",
		"firstName": "Madonna Crane",
		"lastName": "Lars Guzman",
		"email": "vestibulum.massa@icloud.ca",
		"birthDate": "26/08/2024",
		"basicSalary": "-Rp29.200,03",
		"status": "Menikah",
		"group": "Ante Ltd",
		"description": "05/06/2023"
	},
	{
		"userName": "Sonya Shaw",
		"firstName": "Joan Potts",
		"lastName": "Murphy Boyd",
		"email": "pharetra.nibh.aliquam@icloud.org",
		"birthDate": "24/12/2023",
		"basicSalary": "-Rp21.045,21",
		"status": "Menikah",
		"group": "Nisl Nulla Inc.",
		"description": "26/01/2023"
	},
	{
		"userName": "Raya Cross",
		"firstName": "Adrienne Greene",
		"lastName": "Wylie David",
		"email": "erat@hotmail.net",
		"birthDate": "09/09/2024",
		"basicSalary": "Rp98.161,05",
		"status": "Menikah",
		"group": "Elementum Lorem Ut Inc.",
		"description": "25/05/2023"
	},
	{
		"userName": "Risa Fletcher",
		"firstName": "Keely Gonzalez",
		"lastName": "Sarah Finch",
		"email": "donec.feugiat@google.ca",
		"birthDate": "10/03/2024",
		"basicSalary": "-Rp58.638,99",
		"status": "Menikah",
		"group": "Donec Incorporated",
		"description": "02/01/2025"
	},
	{
		"userName": "Raphael Washington",
		"firstName": "Aristotle Bentley",
		"lastName": "Salvador Stanley",
		"email": "nulla@google.couk",
		"birthDate": "16/04/2023",
		"basicSalary": "-Rp60.850,22",
		"status": "Menikah",
		"group": "Nec Mauris LLC",
		"description": "20/07/2023"
	},
	{
		"userName": "Neil Underwood",
		"firstName": "Jonas Keller",
		"lastName": "Alvin Pennington",
		"email": "orci.quis@outlook.edu",
		"birthDate": "28/07/2023",
		"basicSalary": "Rp47.778,41",
		"status": "Menikah",
		"group": "Erat Incorporated",
		"description": "19/07/2024"
	},
	{
		"userName": "Ray Holman",
		"firstName": "Lane Martinez",
		"lastName": "Gary Conley",
		"email": "ut@protonmail.edu",
		"birthDate": "03/06/2023",
		"basicSalary": "-Rp10.510,66",
		"status": "Menikah",
		"group": "Risus Duis LLP",
		"description": "19/04/2023"
	},
	{
		"userName": "Jolie Bruce",
		"firstName": "Clayton Ochoa",
		"lastName": "Tyrone Conner",
		"email": "posuere.vulputate.lacus@aol.net",
		"birthDate": "20/01/2024",
		"basicSalary": "Rp43.502,46",
		"status": "Menikah",
		"group": "Justo Nec LLC",
		"description": "03/11/2023"
	},
	{
		"userName": "Zeph Evans",
		"firstName": "Cynthia Alvarez",
		"lastName": "Shaeleigh Juarez",
		"email": "ullamcorper.viverra.maecenas@icloud.ca",
		"birthDate": "01/09/2024",
		"basicSalary": "-Rp91.094,31",
		"status": "Menikah",
		"group": "Placerat Industries",
		"description": "28/11/2024"
	},
	{
		"userName": "Cole Sears",
		"firstName": "Brenna Salazar",
		"lastName": "Adam Mejia",
		"email": "posuere.cubilia.curae@aol.com",
		"birthDate": "28/10/2023",
		"basicSalary": "Rp59.835,75",
		"status": "Menikah",
		"group": "Semper Tellus Foundation",
		"description": "15/12/2024"
	},
	{
		"userName": "Bertha Hopkins",
		"firstName": "Ferris Cobb",
		"lastName": "Rahim Witt",
		"email": "nunc@google.ca",
		"birthDate": "06/07/2023",
		"basicSalary": "-Rp54.466,15",
		"status": "Menikah",
		"group": "Nec Tellus PC",
		"description": "11/08/2023"
	},
	{
		"userName": "Austin Hinton",
		"firstName": "Drew Benjamin",
		"lastName": "Quynn Franks",
		"email": "orci@outlook.edu",
		"birthDate": "23/04/2024",
		"basicSalary": "Rp34.913,07",
		"status": "Menikah",
		"group": "Donec Consulting",
		"description": "28/12/2023"
	},
	{
		"userName": "Wang Norman",
		"firstName": "Sage Moses",
		"lastName": "August Winters",
		"email": "donec.non.justo@hotmail.edu",
		"birthDate": "06/09/2024",
		"basicSalary": "-Rp42.717,94",
		"status": "Menikah",
		"group": "Tincidunt Industries",
		"description": "20/01/2024"
	},
	{
		"userName": "Robin Bowen",
		"firstName": "Jakeem Vargas",
		"lastName": "Roary Hart",
		"email": "per@google.com",
		"birthDate": "03/09/2023",
		"basicSalary": "-Rp45.699,03",
		"status": "Menikah",
		"group": "Maecenas Libero Est Inc.",
		"description": "10/02/2024"
	},
	{
		"userName": "Imani Mclaughlin",
		"firstName": "Patrick Rutledge",
		"lastName": "Yen Mcknight",
		"email": "libero.integer@hotmail.couk",
		"birthDate": "10/09/2023",
		"basicSalary": "-Rp33.488,12",
		"status": "Menikah",
		"group": "Lectus Pede Et LLP",
		"description": "09/10/2024"
	},
	{
		"userName": "Garrison Tanner",
		"firstName": "Kirsten Kim",
		"lastName": "Isaiah Gilmore",
		"email": "amet.luctus@protonmail.couk",
		"birthDate": "13/10/2024",
		"basicSalary": "Rp49.619,36",
		"status": "Menikah",
		"group": "Mauris Industries",
		"description": "21/03/2024"
	},
	{
		"userName": "Denton Holloway",
		"firstName": "Cullen Moran",
		"lastName": "Nolan Terrell",
		"email": "elit.curabitur.sed@google.org",
		"birthDate": "10/11/2023",
		"basicSalary": "Rp57.972,77",
		"status": "Menikah",
		"group": "Phasellus Foundation",
		"description": "09/12/2024"
	},
	{
		"userName": "Kiara Ray",
		"firstName": "Cara Herman",
		"lastName": "Brian Barlow",
		"email": "nunc@yahoo.com",
		"birthDate": "03/10/2024",
		"basicSalary": "-Rp83.685,39",
		"status": "Menikah",
		"group": "Lorem Incorporated",
		"description": "24/08/2024"
	},
	{
		"userName": "Harlan Lang",
		"firstName": "Gareth Pitts",
		"lastName": "Hashim Harris",
		"email": "a@protonmail.edu",
		"birthDate": "06/11/2024",
		"basicSalary": "-Rp71.300,39",
		"status": "Menikah",
		"group": "Id Blandit Corporation",
		"description": "21/11/2024"
	},
	{
		"userName": "Kellie Santana",
		"firstName": "Alexa Glenn",
		"lastName": "Walter Ochoa",
		"email": "elit.erat@icloud.edu",
		"birthDate": "11/11/2024",
		"basicSalary": "-Rp76.623,38",
		"status": "Menikah",
		"group": "Magnis Dis Incorporated",
		"description": "15/04/2024"
	},
	{
		"userName": "Leilani Ayala",
		"firstName": "Mariam Spence",
		"lastName": "Jonas Hunt",
		"email": "ut@hotmail.net",
		"birthDate": "17/03/2024",
		"basicSalary": "-Rp58.378,62",
		"status": "Menikah",
		"group": "Taciti Sociosqu Ad LLP",
		"description": "15/09/2023"
	},
	{
		"userName": "Mary Williamson",
		"firstName": "Sylvia Hampton",
		"lastName": "Stella Sherman",
		"email": "ut.mi@hotmail.org",
		"birthDate": "22/06/2023",
		"basicSalary": "Rp38.808,77",
		"status": "Menikah",
		"group": "Orci Luctus Incorporated",
		"description": "30/09/2023"
	},
	{
		"userName": "Arden Guerrero",
		"firstName": "Daquan Hinton",
		"lastName": "Ahmed Glass",
		"email": "dui.suspendisse.ac@aol.com",
		"birthDate": "27/11/2023",
		"basicSalary": "-Rp80.072,10",
		"status": "Menikah",
		"group": "Id Ante Corp.",
		"description": "29/04/2023"
	},
	{
		"userName": "Katelyn Turner",
		"firstName": "Brianna Barnett",
		"lastName": "Echo Lloyd",
		"email": "mi.tempor@aol.net",
		"birthDate": "14/01/2024",
		"basicSalary": "-Rp52.527,08",
		"status": "Menikah",
		"group": "Rhoncus Foundation",
		"description": "22/11/2023"
	},
	{
		"userName": "Quamar Beck",
		"firstName": "Sheila Finley",
		"lastName": "Roary Wiggins",
		"email": "orci.in@google.edu",
		"birthDate": "30/06/2023",
		"basicSalary": "Rp39.303,79",
		"status": "Menikah",
		"group": "Et Arcu PC",
		"description": "22/01/2023"
	},
	{
		"userName": "Kato Finley",
		"firstName": "Calista Mcmahon",
		"lastName": "Paki Mckenzie",
		"email": "consequat@protonmail.edu",
		"birthDate": "26/11/2023",
		"basicSalary": "Rp70.883,35",
		"status": "Menikah",
		"group": "Non Limited",
		"description": "12/12/2024"
	},
	{
		"userName": "Eugenia Noble",
		"firstName": "Jerome Stephens",
		"lastName": "Zahir Gilliam",
		"email": "elit.fermentum@yahoo.com",
		"birthDate": "29/05/2023",
		"basicSalary": "-Rp82.825,15",
		"status": "Menikah",
		"group": "Donec Egestas Industries",
		"description": "14/07/2023"
	},
	{
		"userName": "Hedley Rose",
		"firstName": "Armand Spears",
		"lastName": "Susan Armstrong",
		"email": "pharetra.nam.ac@google.couk",
		"birthDate": "28/11/2023",
		"basicSalary": "-Rp91.107,35",
		"status": "Menikah",
		"group": "Elit Fermentum Risus PC",
		"description": "20/01/2024"
	},
	{
		"userName": "Shelly Nichols",
		"firstName": "Raven Powell",
		"lastName": "McKenzie Burris",
		"email": "posuere.enim@yahoo.org",
		"birthDate": "20/03/2024",
		"basicSalary": "-Rp89.186,40",
		"status": "Menikah",
		"group": "Tellus LLC",
		"description": "15/06/2023"
	},
	{
		"userName": "Brenna Ball",
		"firstName": "Mari Stevenson",
		"lastName": "Kylan Knox",
		"email": "urna.convallis@google.com",
		"birthDate": "06/02/2024",
		"basicSalary": "Rp88.539,96",
		"status": "Menikah",
		"group": "Ornare In Faucibus Inc.",
		"description": "16/05/2023"
	},
	{
		"userName": "Ocean Wheeler",
		"firstName": "Fallon Torres",
		"lastName": "Melinda York",
		"email": "consequat.dolor.vitae@yahoo.com",
		"birthDate": "19/06/2024",
		"basicSalary": "-Rp20.594,08",
		"status": "Menikah",
		"group": "Aliquam Rutrum Corp.",
		"description": "29/09/2024"
	},
	{
		"userName": "Kieran Wells",
		"firstName": "Leigh Henson",
		"lastName": "Armand Byers",
		"email": "eu.elit@google.com",
		"birthDate": "02/09/2024",
		"basicSalary": "-Rp30.125,10",
		"status": "Menikah",
		"group": "Duis Corporation",
		"description": "13/05/2024"
	},
	{
		"userName": "Ocean Reeves",
		"firstName": "Graham Browning",
		"lastName": "Winifred Boyle",
		"email": "cursus.et@protonmail.edu",
		"birthDate": "24/08/2024",
		"basicSalary": "Rp86.572,48",
		"status": "Menikah",
		"group": "Tempor Est Ac Ltd",
		"description": "20/01/2025"
	},
	{
		"userName": "Gage Silva",
		"firstName": "Odessa Burnett",
		"lastName": "Tate Silva",
		"email": "augue.ut.lacus@protonmail.com",
		"birthDate": "29/11/2024",
		"basicSalary": "Rp92.426,00",
		"status": "Menikah",
		"group": "Dignissim Inc.",
		"description": "14/08/2023"
	},
	{
		"userName": "Lana Rodgers",
		"firstName": "Stephen Cline",
		"lastName": "Wynne Juarez",
		"email": "aliquam@google.couk",
		"birthDate": "15/02/2023",
		"basicSalary": "-Rp23.064,58",
		"status": "Menikah",
		"group": "Nam Interdum Corp.",
		"description": "11/08/2024"
	},
	{
		"userName": "Nathan Owen",
		"firstName": "Henry Mccall",
		"lastName": "Gannon Hood",
		"email": "magna@google.org",
		"birthDate": "19/03/2024",
		"basicSalary": "-Rp13.691,76",
		"status": "Menikah",
		"group": "Donec Est Nunc Associates",
		"description": "16/08/2024"
	},
	{
		"userName": "Pandora Larsen",
		"firstName": "Isaac Harrison",
		"lastName": "Oleg Lawrence",
		"email": "sed.tortor.integer@google.couk",
		"birthDate": "25/07/2024",
		"basicSalary": "-Rp46.974,06",
		"status": "Menikah",
		"group": "A Neque Nullam Institute",
		"description": "10/04/2024"
	},
	{
		"userName": "Raphael Simmons",
		"firstName": "Hiroko Foster",
		"lastName": "Judah Craig",
		"email": "eu.lacus@google.couk",
		"birthDate": "02/07/2023",
		"basicSalary": "-Rp44.902,46",
		"status": "Menikah",
		"group": "Mauris Molestie Corp.",
		"description": "24/11/2024"
	},
	{
		"userName": "Ray Small",
		"firstName": "Cody Stuart",
		"lastName": "Francesca Barnett",
		"email": "consequat.enim@protonmail.org",
		"birthDate": "14/12/2024",
		"basicSalary": "-Rp30.382,96",
		"status": "Menikah",
		"group": "Sed Pede Ltd",
		"description": "23/08/2024"
	},
	{
		"userName": "Courtney Jenkins",
		"firstName": "Helen Holt",
		"lastName": "Devin Merrill",
		"email": "curabitur.ut@yahoo.edu",
		"birthDate": "03/05/2024",
		"basicSalary": "-Rp72.706,38",
		"status": "Menikah",
		"group": "Risus A Ultricies Incorporated",
		"description": "29/12/2024"
	},
	{
		"userName": "Amir Warner",
		"firstName": "Jared Fisher",
		"lastName": "Hamish Wright",
		"email": "cum@hotmail.couk",
		"birthDate": "04/11/2023",
		"basicSalary": "-Rp21.745,77",
		"status": "Menikah",
		"group": "Mauris Magna Associates",
		"description": "27/04/2023"
	},
	{
		 
		"userName": "Quemby Lynn",
		"firstName": "Samantha Reilly",
		"lastName": "Aristotle Haney",
		"email": "malesuada.vel.venenatis@protonmail.ca",
		"birthDate": "18/10/2024",
		"basicSalary": "Rp86.991,45",
		"status": "Menikah",
		"group": "Faucibus Leo In Incorporated",
		"description": "24/04/2023"
	},
	{
		"userName": "Wayne Freeman",
		"firstName": "Malik Cruz",
		"lastName": "Zelda Fulton",
		"email": "lacus.nulla@aol.edu",
		"birthDate": "23/09/2024",
		"basicSalary": "-Rp70.037,66",
		"status": "Menikah",
		"group": "Metus Sit Industries",
		"description": "24/01/2023"
	},
	{
		 
		"userName": "Lysandra Hicks",
		"firstName": "Lavinia Hamilton",
		"lastName": "Baxter Sweet",
		"email": "sit.amet@google.ca",
		"birthDate": "08/03/2024",
		"basicSalary": "Rp47.006,74",
		"status": "Menikah",
		"group": "Pede Nonummy Ut Incorporated",
		"description": "07/09/2023"
	},
	{
		 
		"userName": "Sophia Eaton",
		"firstName": "Clinton Hardy",
		"lastName": "Mark Deleon",
		"email": "posuere@icloud.org",
		"birthDate": "24/01/2023",
		"basicSalary": "-Rp580,69",
		"status": "Menikah",
		"group": "Eros Corporation",
		"description": "22/01/2023"
	},
	{
		 
		"userName": "Timon Bell",
		"firstName": "Melyssa Calhoun",
		"lastName": "Breanna Larson",
		"email": "mi.lorem.vehicula@icloud.org",
		"birthDate": "23/04/2023",
		"basicSalary": "-Rp67.177,80",
		"status": "Menikah",
		"group": "Ligula Corporation",
		"description": "04/01/2024"
	},
	{
		 
		"userName": "Burton Cardenas",
		"firstName": "Kareem Heath",
		"lastName": "Alexis Carr",
		"email": "nibh.lacinia.orci@yahoo.edu",
		"birthDate": "09/08/2024",
		"basicSalary": "Rp29.894,92",
		"status": "Menikah",
		"group": "Donec Fringilla Donec Ltd",
		"description": "27/03/2024"
	},
	{
		 
		"userName": "Serina Delgado",
		"firstName": "Xenos Cash",
		"lastName": "Oleg Moses",
		"email": "ultrices.iaculis@google.net",
		"birthDate": "22/04/2023",
		"basicSalary": "-Rp40.781,46",
		"status": "Menikah",
		"group": "Sit Amet Dapibus Inc.",
		"description": "05/06/2024"
	},
	{
		 
		"userName": "Angela Edwards",
		"firstName": "Hop Winters",
		"lastName": "Tatiana Pittman",
		"email": "vestibulum.accumsan.neque@aol.edu",
		"birthDate": "27/05/2024",
		"basicSalary": "Rp92.520,55",
		"status": "Menikah",
		"group": "Enim Gravida PC",
		"description": "18/04/2024"
	},
	{
		 
		"userName": "Sara O'donnell",
		"firstName": "Jonas Clarke",
		"lastName": "Kalia Randall",
		"email": "purus.gravida@icloud.com",
		"birthDate": "15/04/2023",
		"basicSalary": "-Rp77.881,51",
		"status": "Menikah",
		"group": "Arcu Vel Associates",
		"description": "09/01/2024"
	},
	{
		 
		"userName": "Ariana Howell",
		"firstName": "Chelsea Mullins",
		"lastName": "Darius Patterson",
		"email": "congue.a@hotmail.net",
		"birthDate": "10/06/2024",
		"basicSalary": "-Rp42.758,45",
		"status": "Menikah",
		"group": "Scelerisque Mollis Phasellus Consulting",
		"description": "01/08/2024"
	},
	{
		 
		"userName": "Kane Holt",
		"firstName": "Zephania Emerson",
		"lastName": "Tyler Gutierrez",
		"email": "adipiscing.mauris@yahoo.ca",
		"birthDate": "13/06/2024",
		"basicSalary": "-Rp42.243,07",
		"status": "Menikah",
		"group": "Lobortis Quam Foundation",
		"description": "19/05/2024"
	},
	{
		
		"userName": "Samantha Wade",
		"firstName": "Lael Brock",
		"lastName": "Yetta Monroe",
		"email": "placerat.velit.quisque@hotmail.couk",
		"birthDate": "03/02/2023",
		"basicSalary": "Rp54.250,00",
		"status": "Menikah",
		"group": "Vulputate Dui LLC",
		"description": "24/11/2023"
	},
	{
		
		"userName": "Olympia Randall",
		"firstName": "Virginia Garza",
		"lastName": "Buckminster Chambers",
		"email": "facilisis.eget.ipsum@icloud.couk",
		"birthDate": "30/05/2023",
		"basicSalary": "Rp82.023,73",
		"status": "Menikah",
		"group": "Sapien Gravida Inc.",
		"description": "11/12/2024"
	}
];

app.get('/', (req, res) => {
  res.send('API');
});

app.get('/api/employees', (req, res) => {
  res.json(employees);
});

app.post('/api/create_employees', (req, res) => {
  const newEmployee = req.body;
  employees.push(newEmployee);
  res.json(newEmployee);
  console.log("Request data:");
console.log(req);
});

app.listen(PORT, () => {
  console.log("Server is running on port ${PORT}");
});