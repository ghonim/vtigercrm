/* ORGANIZATION BILLING COUNTRY */

UPDATE  `vtigercrm540`.`vtiger_field` SET  `uitype` =  '15' WHERE  `vtiger_field`.`fieldid` =32;
UPDATE  `vtigercrm540`.`vtiger_picklist_seq` SET  `id` =  `id` + 1;

INSERT INTO  `vtigercrm540`.`vtiger_picklist` (`picklistid` , `name`)
SELECT id,  "bill_country" AS name
FROM `vtiger_picklist_seq`;

CREATE TABLE IF NOT EXISTS `vtiger_bill_country` (
  `bill_country` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL,
  `bill_countryid` int(11) NOT NULL,
  `sortorderid` int(10) DEFAULT NULL,
  PRIMARY KEY (`bill_countryid`),
  UNIQUE KEY `bill_country_bill_country_idx` (`bill_country`)
);

CREATE TABLE IF NOT EXISTS `vtiger_bill_country_seq` (
  `id` int(11) NOT NULL
);

INSERT INTO  `vtigercrm540`.`vtiger_bill_country_seq` (`id`) VALUES ('242');

INSERT INTO `vtiger_bill_country` (`bill_country`, `presence`, `picklist_valueid`, `bill_countryid`, `sortorderid`) VALUES
('--None--', 1, 288, 1, 0),
('Afghanistan', 1, 289, 2, 1),
('Aland Islands', 1, 290, 3, 2),
('Albania', 1, 291, 4, 3),
('Algeria', 1, 292, 5, 4),
('American Samoa', 1, 293, 6, 5),
('Andorra', 1, 294, 7, 6),
('Angola', 1, 295, 8, 7),
('Anguilla', 1, 296, 9, 8),
('Antarctica', 1, 297, 10, 9),
('Antigua and Barbuda', 1, 298, 11, 10),
('Argentina', 1, 299, 12, 11),
('Armenia', 1, 300, 13, 12),
('Aruba', 1, 301, 14, 13),
('Australia', 1, 302, 15, 14),
('Austria', 1, 303, 16, 15),
('Azerbaijan', 1, 304, 17, 16),
('Bahamas', 1, 305, 18, 17),
('Bahrain', 1, 306, 19, 18),
('Bangladesh', 1, 307, 20, 19),
('Barbados', 1, 308, 21, 20),
('Belarus', 1, 309, 22, 21),
('Belgium', 1, 310, 23, 22),
('Belize', 1, 311, 24, 23),
('Benin', 1, 312, 25, 24),
('Bermuda', 1, 313, 26, 25),
('Bhutan', 1, 314, 27, 26),
('Bolivia', 1, 315, 28, 27),
('Bosnia and Herzegovina', 1, 316, 29, 28),
('Botswana', 1, 317, 30, 29),
('Bouvet Island', 1, 318, 31, 30),
('Brazil', 1, 319, 32, 31),
('British Indian Ocean Territory', 1, 320, 33, 32),
('British Virgin Islands', 1, 321, 34, 33),
('Brunei Darussalam', 1, 322, 35, 34),
('Bulgaria', 1, 323, 36, 35),
('Burkina Faso', 1, 324, 37, 36),
('Burundi', 1, 325, 38, 37),
('Cambodia', 1, 326, 39, 38),
('Cameroon', 1, 327, 40, 39),
('Canada', 1, 328, 41, 40),
('Cape Verde', 1, 329, 42, 41),
('Cayman Islands', 1, 330, 43, 42),
('Central African', 1, 331, 44, 43),
('Chad', 1, 332, 45, 44),
('Chile', 1, 333, 46, 45),
('China', 1, 334, 47, 46),
('Christmas Island', 1, 335, 48, 47),
('Cocos (Keeling) Islands', 1, 336, 49, 48),
('Colombia', 1, 337, 50, 49),
('Comoros', 1, 338, 51, 50),
('Cook Islands', 1, 339, 52, 51),
('Costa Rica', 1, 340, 53, 52),
('Cote d''Ivoire', 1, 341, 54, 53),
('Croatia', 1, 342, 55, 54),
('Cuba', 1, 343, 56, 55),
('Cyprus', 1, 344, 57, 56),
('Czech Republic', 1, 345, 58, 57),
('Democratic People''s Republic of Korea', 1, 346, 59, 58),
('Denmark', 1, 347, 60, 59),
('Djibouti', 1, 348, 61, 60),
('Dominica', 1, 349, 62, 61),
('Dominican Republic', 1, 350, 63, 62),
('Ecuador', 1, 351, 64, 63),
('Egypt', 1, 352, 65, 64),
('El Salvador', 1, 353, 66, 65),
('Equatorial Guinea', 1, 354, 67, 66),
('Eritrea', 1, 355, 68, 67),
('Estonia', 1, 356, 69, 68),
('Ethiopia', 1, 357, 70, 69),
('Falkland Islands', 1, 358, 71, 70),
('Faroe Islands', 1, 359, 72, 71),
('Federated States of Micronesia', 1, 360, 73, 72),
('Fiji', 1, 361, 74, 73),
('Finland', 1, 362, 75, 74),
('France', 1, 363, 76, 75),
('French Guiana', 1, 364, 77, 76),
('French Polynesia', 1, 365, 78, 77),
('French Southern Territories', 1, 366, 79, 78),
('Gabon', 1, 367, 80, 79),
('Gambia', 1, 368, 81, 80),
('Georgia', 1, 369, 82, 81),
('Germany', 1, 370, 83, 82),
('Ghana', 1, 371, 84, 83),
('Gibraltar', 1, 372, 85, 84),
('Greece', 1, 373, 86, 85),
('Greenland', 1, 374, 87, 86),
('Grenada', 1, 375, 88, 87),
('Guadeloupe', 1, 376, 89, 88),
('Guam', 1, 377, 90, 89),
('Guatemala', 1, 378, 91, 90),
('Guinea', 1, 379, 92, 91),
('Guinea-Bissau', 1, 380, 93, 92),
('Guyana', 1, 381, 94, 93),
('Haiti', 1, 382, 95, 94),
('Heard Island and McDonald Islands', 1, 383, 96, 95),
('Honduras', 1, 384, 97, 96),
('Hong Kong', 1, 385, 98, 97),
('Hungary', 1, 386, 99, 98),
('Iceland', 1, 387, 100, 99),
('India', 1, 388, 101, 100),
('Indonesia', 1, 389, 102, 101),
('Iraq', 1, 390, 103, 102),
('Ireland', 1, 391, 104, 103),
('Islamic Republic of Iran', 1, 392, 105, 104),
('Isle of Man', 1, 393, 106, 105),
('Israel', 1, 394, 107, 106),
('Italy', 1, 395, 108, 107),
('Jamaica', 1, 396, 109, 108),
('Japan', 1, 397, 110, 109),
('Jordan', 1, 398, 111, 110),
('Kazakhstan', 1, 399, 112, 111),
('Kenya', 1, 400, 113, 112),
('Kiribati', 1, 401, 114, 113),
('Kuwait', 1, 402, 115, 114),
('Kyrgyzstan', 1, 403, 116, 115),
('Lao People''s Democratic Republic', 1, 404, 117, 116),
('Latvia', 1, 405, 118, 117),
('Lebanon', 1, 406, 119, 118),
('Lesotho', 1, 407, 120, 119),
('Liberia', 1, 408, 121, 120),
('Libyan Arab Jamahiriya', 1, 409, 122, 121),
('Liechtenstein', 1, 410, 123, 122),
('Lithuania', 1, 411, 124, 123),
('Luxembourg', 1, 412, 125, 124),
('Macao', 1, 413, 126, 125),
('Madagascar', 1, 414, 127, 126),
('Malawi', 1, 415, 128, 127),
('Malaysia', 1, 416, 129, 128),
('Maldives', 1, 417, 130, 129),
('Mali', 1, 418, 131, 130),
('Malta', 1, 419, 132, 131),
('Marshall Islands', 1, 420, 133, 132),
('Martinique', 1, 421, 134, 133),
('Mauritania', 1, 422, 135, 134),
('Mauritius', 1, 423, 136, 135),
('Mayotte', 1, 424, 137, 136),
('Mexico', 1, 425, 138, 137),
('Monaco', 1, 426, 139, 138),
('Mongolia', 1, 427, 140, 139),
('Montserrat', 1, 428, 141, 140),
('Morocco', 1, 429, 142, 141),
('Mozambique', 1, 430, 143, 142),
('Myanmar', 1, 431, 144, 143),
('Namibia', 1, 432, 145, 144),
('Nauru', 1, 433, 146, 145),
('Nepal', 1, 434, 147, 146),
('Netherlands', 1, 435, 148, 147),
('Netherlands Antilles', 1, 436, 149, 148),
('New Caledonia', 1, 437, 150, 149),
('New Zealand', 1, 438, 151, 150),
('Nicaragua', 1, 439, 152, 151),
('Niger', 1, 440, 153, 152),
('Nigeria', 1, 441, 154, 153),
('Niue', 1, 442, 155, 154),
('Norfolk Island', 1, 443, 156, 155),
('Northern Mariana Islands', 1, 444, 157, 156),
('Norway', 1, 445, 158, 157),
('Occupied Palestinian Territory', 1, 446, 159, 158),
('Oman', 1, 447, 160, 159),
('Pakistan', 1, 448, 161, 160),
('Palau', 1, 449, 162, 161),
('Panama', 1, 450, 163, 162),
('Papua New Guinea', 1, 451, 164, 163),
('Paraguay', 1, 452, 165, 164),
('Peru', 1, 453, 166, 165),
('Philippines', 1, 454, 167, 166),
('Pitcairn', 1, 455, 168, 167),
('Poland', 1, 456, 169, 168),
('Portugal', 1, 457, 170, 169),
('Puerto Rico', 1, 458, 171, 170),
('Qatar', 1, 459, 172, 171),
('Republic of Korea', 1, 460, 173, 172),
('Republic of Moldova', 1, 461, 174, 173),
('Republic of the Congo', 1, 462, 175, 174),
('Reunion', 1, 463, 176, 175),
('Romania', 1, 464, 177, 176),
('Russian Federation', 1, 465, 178, 177),
('Rwanda', 1, 466, 179, 178),
('Saint Helena', 1, 467, 180, 179),
('Saint Kitts and Nevis', 1, 468, 181, 180),
('Saint Lucia', 1, 469, 182, 181),
('Saint Vincent and the Grenadines', 1, 470, 183, 182),
('Saint-Pierre and Miquelon', 1, 471, 184, 183),
('Samoa', 1, 472, 185, 184),
('San Marino', 1, 473, 186, 185),
('Sao Tome and Principe', 1, 474, 187, 186),
('Saudi Arabia', 1, 475, 188, 187),
('Senegal', 1, 476, 189, 188),
('Serbia and Montenegro', 1, 477, 190, 189),
('Seychelles', 1, 478, 191, 190),
('Sierra Leone', 1, 479, 192, 191),
('Singapore', 1, 480, 193, 192),
('Slovakia', 1, 481, 194, 193),
('Slovenia', 1, 482, 195, 194),
('Solomon Islands', 1, 483, 196, 195),
('Somalia', 1, 484, 197, 196),
('South Africa', 1, 485, 198, 197),
('South Georgia and the South Sandwich Islands', 1, 486, 199, 198),
('Spain', 1, 487, 200, 199),
('Sri Lanka', 1, 488, 201, 200),
('Sudan', 1, 489, 202, 201),
('Suriname', 1, 490, 203, 202),
('Svalbard and Jan Mayen', 1, 491, 204, 203),
('Swaziland', 1, 492, 205, 204),
('Sweden', 1, 493, 206, 205),
('Switzerland', 1, 494, 207, 206),
('Syrian Arab Republic', 1, 495, 208, 207),
('Taiwan', 1, 496, 209, 208),
('Tajikistan', 1, 497, 210, 209),
('Thailand', 1, 498, 211, 210),
('The Democratic Republic Of The Congo', 1, 499, 212, 211),
('The Former Yugoslav Republic of Macedonia', 1, 500, 213, 212),
('Timor-Leste', 1, 501, 214, 213),
('Togo', 1, 502, 215, 214),
('Tokelau', 1, 503, 216, 215),
('Tonga', 1, 504, 217, 216),
('Trinidad and Tobago', 1, 505, 218, 217),
('Tunisia', 1, 506, 219, 218),
('Turkey', 1, 507, 220, 219),
('Turkmenistan', 1, 508, 221, 220),
('Turks and Caicos Islands', 1, 509, 222, 221),
('Tuvalu', 1, 510, 223, 222),
('U.S. Virgin Islands', 1, 511, 224, 223),
('Uganda', 1, 512, 225, 224),
('Ukraine', 1, 513, 226, 225),
('United Arab Emirates', 1, 514, 227, 226),
('United Kingdom', 1, 515, 228, 227),
('United Republic Of Tanzania', 1, 516, 229, 228),
('United States', 1, 517, 230, 229),
('United States Minor Outlying Islands', 1, 518, 231, 230),
('Uruguay', 1, 519, 232, 231),
('Uzbekistan', 1, 520, 233, 232),
('Vanuatu', 1, 521, 234, 233),
('Vatican City State', 1, 522, 235, 234),
('Venezuela', 1, 523, 236, 235),
('Vietnam', 1, 524, 237, 236),
('Wallis and Futuna', 1, 525, 238, 237),
('Western Sahara', 1, 526, 239, 238),
('Yemen', 1, 527, 240, 239),
('Zambia', 1, 528, 241, 240),
('Zimbabwe', 1, 529, 242, 241);

UPDATE `vtiger_ship_country` SET `picklist_valueid`=`picklist_valueid`-287+(SELECT id
    FROM vtiger_picklistvalues_seq);

UPDATE `vtiger_picklistvalues_seq` SET `id`=`id`+242;

INSERT INTO `vtiger_role2picklist`(`roleid`, `picklistvalueid`, `picklistid`, `sortid`)
SELECT vr.roleid, vbc.picklist_valueid, picklist_seq.id AS picklistid, vbc.sortorderid
FROM vtiger_role vr, vtiger_bill_country vbc, (
    SELECT id
    FROM vtiger_picklist_seq
    ) AS picklist_seq;

/* ORGANIZATION SHIPPING COUNTRY */

UPDATE  `vtigercrm540`.`vtiger_field` SET  `uitype` =  '15' WHERE  `vtiger_field`.`fieldid` =33;
UPDATE  `vtigercrm540`.`vtiger_picklist_seq` SET  `id` =  `id` + 1;

INSERT INTO  `vtigercrm540`.`vtiger_picklist` (`picklistid` , `name`)
SELECT id,  "ship_country" AS name
FROM `vtiger_picklist_seq`;

CREATE TABLE IF NOT EXISTS `vtiger_ship_country` (
  `ship_country` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL,
  `ship_countryid` int(11) NOT NULL,
  `sortorderid` int(10) DEFAULT NULL,
  PRIMARY KEY (`ship_countryid`),
  UNIQUE KEY `ship_country_ship_country_idx` (`ship_country`)
);
CREATE TABLE IF NOT EXISTS `vtiger_ship_country_seq` (
  `id` int(11) NOT NULL
);

INSERT INTO  `vtigercrm540`.`vtiger_ship_country_seq` (`id`) VALUES ('242');

INSERT INTO `vtiger_ship_country` (`ship_country`, `presence`, `picklist_valueid`, `ship_countryid`, `sortorderid`) VALUES
('--None--', 1, 288, 1, 0),
('Afghanistan', 1, 289, 2, 1),
('Aland Islands', 1, 290, 3, 2),
('Albania', 1, 291, 4, 3),
('Algeria', 1, 292, 5, 4),
('American Samoa', 1, 293, 6, 5),
('Andorra', 1, 294, 7, 6),
('Angola', 1, 295, 8, 7),
('Anguilla', 1, 296, 9, 8),
('Antarctica', 1, 297, 10, 9),
('Antigua and Barbuda', 1, 298, 11, 10),
('Argentina', 1, 299, 12, 11),
('Armenia', 1, 300, 13, 12),
('Aruba', 1, 301, 14, 13),
('Australia', 1, 302, 15, 14),
('Austria', 1, 303, 16, 15),
('Azerbaijan', 1, 304, 17, 16),
('Bahamas', 1, 305, 18, 17),
('Bahrain', 1, 306, 19, 18),
('Bangladesh', 1, 307, 20, 19),
('Barbados', 1, 308, 21, 20),
('Belarus', 1, 309, 22, 21),
('Belgium', 1, 310, 23, 22),
('Belize', 1, 311, 24, 23),
('Benin', 1, 312, 25, 24),
('Bermuda', 1, 313, 26, 25),
('Bhutan', 1, 314, 27, 26),
('Bolivia', 1, 315, 28, 27),
('Bosnia and Herzegovina', 1, 316, 29, 28),
('Botswana', 1, 317, 30, 29),
('Bouvet Island', 1, 318, 31, 30),
('Brazil', 1, 319, 32, 31),
('British Indian Ocean Territory', 1, 320, 33, 32),
('British Virgin Islands', 1, 321, 34, 33),
('Brunei Darussalam', 1, 322, 35, 34),
('Bulgaria', 1, 323, 36, 35),
('Burkina Faso', 1, 324, 37, 36),
('Burundi', 1, 325, 38, 37),
('Cambodia', 1, 326, 39, 38),
('Cameroon', 1, 327, 40, 39),
('Canada', 1, 328, 41, 40),
('Cape Verde', 1, 329, 42, 41),
('Cayman Islands', 1, 330, 43, 42),
('Central African', 1, 331, 44, 43),
('Chad', 1, 332, 45, 44),
('Chile', 1, 333, 46, 45),
('China', 1, 334, 47, 46),
('Christmas Island', 1, 335, 48, 47),
('Cocos (Keeling) Islands', 1, 336, 49, 48),
('Colombia', 1, 337, 50, 49),
('Comoros', 1, 338, 51, 50),
('Cook Islands', 1, 339, 52, 51),
('Costa Rica', 1, 340, 53, 52),
('Cote d''Ivoire', 1, 341, 54, 53),
('Croatia', 1, 342, 55, 54),
('Cuba', 1, 343, 56, 55),
('Cyprus', 1, 344, 57, 56),
('Czech Republic', 1, 345, 58, 57),
('Democratic People''s Republic of Korea', 1, 346, 59, 58),
('Denmark', 1, 347, 60, 59),
('Djibouti', 1, 348, 61, 60),
('Dominica', 1, 349, 62, 61),
('Dominican Republic', 1, 350, 63, 62),
('Ecuador', 1, 351, 64, 63),
('Egypt', 1, 352, 65, 64),
('El Salvador', 1, 353, 66, 65),
('Equatorial Guinea', 1, 354, 67, 66),
('Eritrea', 1, 355, 68, 67),
('Estonia', 1, 356, 69, 68),
('Ethiopia', 1, 357, 70, 69),
('Falkland Islands', 1, 358, 71, 70),
('Faroe Islands', 1, 359, 72, 71),
('Federated States of Micronesia', 1, 360, 73, 72),
('Fiji', 1, 361, 74, 73),
('Finland', 1, 362, 75, 74),
('France', 1, 363, 76, 75),
('French Guiana', 1, 364, 77, 76),
('French Polynesia', 1, 365, 78, 77),
('French Southern Territories', 1, 366, 79, 78),
('Gabon', 1, 367, 80, 79),
('Gambia', 1, 368, 81, 80),
('Georgia', 1, 369, 82, 81),
('Germany', 1, 370, 83, 82),
('Ghana', 1, 371, 84, 83),
('Gibraltar', 1, 372, 85, 84),
('Greece', 1, 373, 86, 85),
('Greenland', 1, 374, 87, 86),
('Grenada', 1, 375, 88, 87),
('Guadeloupe', 1, 376, 89, 88),
('Guam', 1, 377, 90, 89),
('Guatemala', 1, 378, 91, 90),
('Guinea', 1, 379, 92, 91),
('Guinea-Bissau', 1, 380, 93, 92),
('Guyana', 1, 381, 94, 93),
('Haiti', 1, 382, 95, 94),
('Heard Island and McDonald Islands', 1, 383, 96, 95),
('Honduras', 1, 384, 97, 96),
('Hong Kong', 1, 385, 98, 97),
('Hungary', 1, 386, 99, 98),
('Iceland', 1, 387, 100, 99),
('India', 1, 388, 101, 100),
('Indonesia', 1, 389, 102, 101),
('Iraq', 1, 390, 103, 102),
('Ireland', 1, 391, 104, 103),
('Islamic Republic of Iran', 1, 392, 105, 104),
('Isle of Man', 1, 393, 106, 105),
('Israel', 1, 394, 107, 106),
('Italy', 1, 395, 108, 107),
('Jamaica', 1, 396, 109, 108),
('Japan', 1, 397, 110, 109),
('Jordan', 1, 398, 111, 110),
('Kazakhstan', 1, 399, 112, 111),
('Kenya', 1, 400, 113, 112),
('Kiribati', 1, 401, 114, 113),
('Kuwait', 1, 402, 115, 114),
('Kyrgyzstan', 1, 403, 116, 115),
('Lao People''s Democratic Republic', 1, 404, 117, 116),
('Latvia', 1, 405, 118, 117),
('Lebanon', 1, 406, 119, 118),
('Lesotho', 1, 407, 120, 119),
('Liberia', 1, 408, 121, 120),
('Libyan Arab Jamahiriya', 1, 409, 122, 121),
('Liechtenstein', 1, 410, 123, 122),
('Lithuania', 1, 411, 124, 123),
('Luxembourg', 1, 412, 125, 124),
('Macao', 1, 413, 126, 125),
('Madagascar', 1, 414, 127, 126),
('Malawi', 1, 415, 128, 127),
('Malaysia', 1, 416, 129, 128),
('Maldives', 1, 417, 130, 129),
('Mali', 1, 418, 131, 130),
('Malta', 1, 419, 132, 131),
('Marshall Islands', 1, 420, 133, 132),
('Martinique', 1, 421, 134, 133),
('Mauritania', 1, 422, 135, 134),
('Mauritius', 1, 423, 136, 135),
('Mayotte', 1, 424, 137, 136),
('Mexico', 1, 425, 138, 137),
('Monaco', 1, 426, 139, 138),
('Mongolia', 1, 427, 140, 139),
('Montserrat', 1, 428, 141, 140),
('Morocco', 1, 429, 142, 141),
('Mozambique', 1, 430, 143, 142),
('Myanmar', 1, 431, 144, 143),
('Namibia', 1, 432, 145, 144),
('Nauru', 1, 433, 146, 145),
('Nepal', 1, 434, 147, 146),
('Netherlands', 1, 435, 148, 147),
('Netherlands Antilles', 1, 436, 149, 148),
('New Caledonia', 1, 437, 150, 149),
('New Zealand', 1, 438, 151, 150),
('Nicaragua', 1, 439, 152, 151),
('Niger', 1, 440, 153, 152),
('Nigeria', 1, 441, 154, 153),
('Niue', 1, 442, 155, 154),
('Norfolk Island', 1, 443, 156, 155),
('Northern Mariana Islands', 1, 444, 157, 156),
('Norway', 1, 445, 158, 157),
('Occupied Palestinian Territory', 1, 446, 159, 158),
('Oman', 1, 447, 160, 159),
('Pakistan', 1, 448, 161, 160),
('Palau', 1, 449, 162, 161),
('Panama', 1, 450, 163, 162),
('Papua New Guinea', 1, 451, 164, 163),
('Paraguay', 1, 452, 165, 164),
('Peru', 1, 453, 166, 165),
('Philippines', 1, 454, 167, 166),
('Pitcairn', 1, 455, 168, 167),
('Poland', 1, 456, 169, 168),
('Portugal', 1, 457, 170, 169),
('Puerto Rico', 1, 458, 171, 170),
('Qatar', 1, 459, 172, 171),
('Republic of Korea', 1, 460, 173, 172),
('Republic of Moldova', 1, 461, 174, 173),
('Republic of the Congo', 1, 462, 175, 174),
('Reunion', 1, 463, 176, 175),
('Romania', 1, 464, 177, 176),
('Russian Federation', 1, 465, 178, 177),
('Rwanda', 1, 466, 179, 178),
('Saint Helena', 1, 467, 180, 179),
('Saint Kitts and Nevis', 1, 468, 181, 180),
('Saint Lucia', 1, 469, 182, 181),
('Saint Vincent and the Grenadines', 1, 470, 183, 182),
('Saint-Pierre and Miquelon', 1, 471, 184, 183),
('Samoa', 1, 472, 185, 184),
('San Marino', 1, 473, 186, 185),
('Sao Tome and Principe', 1, 474, 187, 186),
('Saudi Arabia', 1, 475, 188, 187),
('Senegal', 1, 476, 189, 188),
('Serbia and Montenegro', 1, 477, 190, 189),
('Seychelles', 1, 478, 191, 190),
('Sierra Leone', 1, 479, 192, 191),
('Singapore', 1, 480, 193, 192),
('Slovakia', 1, 481, 194, 193),
('Slovenia', 1, 482, 195, 194),
('Solomon Islands', 1, 483, 196, 195),
('Somalia', 1, 484, 197, 196),
('South Africa', 1, 485, 198, 197),
('South Georgia and the South Sandwich Islands', 1, 486, 199, 198),
('Spain', 1, 487, 200, 199),
('Sri Lanka', 1, 488, 201, 200),
('Sudan', 1, 489, 202, 201),
('Suriname', 1, 490, 203, 202),
('Svalbard and Jan Mayen', 1, 491, 204, 203),
('Swaziland', 1, 492, 205, 204),
('Sweden', 1, 493, 206, 205),
('Switzerland', 1, 494, 207, 206),
('Syrian Arab Republic', 1, 495, 208, 207),
('Taiwan', 1, 496, 209, 208),
('Tajikistan', 1, 497, 210, 209),
('Thailand', 1, 498, 211, 210),
('The Democratic Republic Of The Congo', 1, 499, 212, 211),
('The Former Yugoslav Republic of Macedonia', 1, 500, 213, 212),
('Timor-Leste', 1, 501, 214, 213),
('Togo', 1, 502, 215, 214),
('Tokelau', 1, 503, 216, 215),
('Tonga', 1, 504, 217, 216),
('Trinidad and Tobago', 1, 505, 218, 217),
('Tunisia', 1, 506, 219, 218),
('Turkey', 1, 507, 220, 219),
('Turkmenistan', 1, 508, 221, 220),
('Turks and Caicos Islands', 1, 509, 222, 221),
('Tuvalu', 1, 510, 223, 222),
('U.S. Virgin Islands', 1, 511, 224, 223),
('Uganda', 1, 512, 225, 224),
('Ukraine', 1, 513, 226, 225),
('United Arab Emirates', 1, 514, 227, 226),
('United Kingdom', 1, 515, 228, 227),
('United Republic Of Tanzania', 1, 516, 229, 228),
('United States', 1, 517, 230, 229),
('United States Minor Outlying Islands', 1, 518, 231, 230),
('Uruguay', 1, 519, 232, 231),
('Uzbekistan', 1, 520, 233, 232),
('Vanuatu', 1, 521, 234, 233),
('Vatican City State', 1, 522, 235, 234),
('Venezuela', 1, 523, 236, 235),
('Vietnam', 1, 524, 237, 236),
('Wallis and Futuna', 1, 525, 238, 237),
('Western Sahara', 1, 526, 239, 238),
('Yemen', 1, 527, 240, 239),
('Zambia', 1, 528, 241, 240),
('Zimbabwe', 1, 529, 242, 241);

UPDATE `vtiger_ship_country` SET `picklist_valueid`=`picklist_valueid`-287+(SELECT id
    FROM vtiger_picklistvalues_seq);

UPDATE `vtiger_picklistvalues_seq` SET `id`=`id`+242;
    
INSERT INTO `vtiger_role2picklist`(`roleid`, `picklistvalueid`, `picklistid`, `sortid`)
SELECT vr.roleid, vbc.picklist_valueid, picklist_seq.id AS picklistid, vbc.sortorderid
FROM vtiger_role vr, vtiger_ship_country vbc, (
    SELECT id
    FROM vtiger_picklist_seq
    ) AS picklist_seq;

/* PERSON MAILING COUNTRY */

UPDATE  `vtigercrm540`.`vtiger_field` SET  `uitype` =  '15' WHERE  `vtiger_field`.`fieldid` =104;
UPDATE  `vtigercrm540`.`vtiger_picklist_seq` SET  `id` =  `id` + 1;

INSERT INTO  `vtigercrm540`.`vtiger_picklist` (`picklistid` , `name`)
SELECT id,  "mailingcountry" AS name
FROM `vtiger_picklist_seq`;

CREATE TABLE IF NOT EXISTS `vtiger_mailingcountry` (
  `mailingcountry` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL,
  `mailingcountryid` int(11) NOT NULL,
  `sortorderid` int(10) DEFAULT NULL,
  PRIMARY KEY (`mailingcountryid`),
  UNIQUE KEY `mailingcountry_mailingcountry_idx` (`mailingcountry`)
);

CREATE TABLE IF NOT EXISTS `vtiger_mailingcountry_seq` (
  `id` int(11) NOT NULL
);

INSERT INTO  `vtigercrm540`.`vtiger_mailingcountry_seq` (`id`) VALUES ('242');

INSERT INTO `vtiger_mailingcountry` (`mailingcountry`, `presence`, `picklist_valueid`, `mailingcountryid`, `sortorderid`) VALUES
('--None--', 1, 288, 1, 0),
('Afghanistan', 1, 289, 2, 1),
('Aland Islands', 1, 290, 3, 2),
('Albania', 1, 291, 4, 3),
('Algeria', 1, 292, 5, 4),
('American Samoa', 1, 293, 6, 5),
('Andorra', 1, 294, 7, 6),
('Angola', 1, 295, 8, 7),
('Anguilla', 1, 296, 9, 8),
('Antarctica', 1, 297, 10, 9),
('Antigua and Barbuda', 1, 298, 11, 10),
('Argentina', 1, 299, 12, 11),
('Armenia', 1, 300, 13, 12),
('Aruba', 1, 301, 14, 13),
('Australia', 1, 302, 15, 14),
('Austria', 1, 303, 16, 15),
('Azerbaijan', 1, 304, 17, 16),
('Bahamas', 1, 305, 18, 17),
('Bahrain', 1, 306, 19, 18),
('Bangladesh', 1, 307, 20, 19),
('Barbados', 1, 308, 21, 20),
('Belarus', 1, 309, 22, 21),
('Belgium', 1, 310, 23, 22),
('Belize', 1, 311, 24, 23),
('Benin', 1, 312, 25, 24),
('Bermuda', 1, 313, 26, 25),
('Bhutan', 1, 314, 27, 26),
('Bolivia', 1, 315, 28, 27),
('Bosnia and Herzegovina', 1, 316, 29, 28),
('Botswana', 1, 317, 30, 29),
('Bouvet Island', 1, 318, 31, 30),
('Brazil', 1, 319, 32, 31),
('British Indian Ocean Territory', 1, 320, 33, 32),
('British Virgin Islands', 1, 321, 34, 33),
('Brunei Darussalam', 1, 322, 35, 34),
('Bulgaria', 1, 323, 36, 35),
('Burkina Faso', 1, 324, 37, 36),
('Burundi', 1, 325, 38, 37),
('Cambodia', 1, 326, 39, 38),
('Cameroon', 1, 327, 40, 39),
('Canada', 1, 328, 41, 40),
('Cape Verde', 1, 329, 42, 41),
('Cayman Islands', 1, 330, 43, 42),
('Central African', 1, 331, 44, 43),
('Chad', 1, 332, 45, 44),
('Chile', 1, 333, 46, 45),
('China', 1, 334, 47, 46),
('Christmas Island', 1, 335, 48, 47),
('Cocos (Keeling) Islands', 1, 336, 49, 48),
('Colombia', 1, 337, 50, 49),
('Comoros', 1, 338, 51, 50),
('Cook Islands', 1, 339, 52, 51),
('Costa Rica', 1, 340, 53, 52),
('Cote d''Ivoire', 1, 341, 54, 53),
('Croatia', 1, 342, 55, 54),
('Cuba', 1, 343, 56, 55),
('Cyprus', 1, 344, 57, 56),
('Czech Republic', 1, 345, 58, 57),
('Democratic People''s Republic of Korea', 1, 346, 59, 58),
('Denmark', 1, 347, 60, 59),
('Djibouti', 1, 348, 61, 60),
('Dominica', 1, 349, 62, 61),
('Dominican Republic', 1, 350, 63, 62),
('Ecuador', 1, 351, 64, 63),
('Egypt', 1, 352, 65, 64),
('El Salvador', 1, 353, 66, 65),
('Equatorial Guinea', 1, 354, 67, 66),
('Eritrea', 1, 355, 68, 67),
('Estonia', 1, 356, 69, 68),
('Ethiopia', 1, 357, 70, 69),
('Falkland Islands', 1, 358, 71, 70),
('Faroe Islands', 1, 359, 72, 71),
('Federated States of Micronesia', 1, 360, 73, 72),
('Fiji', 1, 361, 74, 73),
('Finland', 1, 362, 75, 74),
('France', 1, 363, 76, 75),
('French Guiana', 1, 364, 77, 76),
('French Polynesia', 1, 365, 78, 77),
('French Southern Territories', 1, 366, 79, 78),
('Gabon', 1, 367, 80, 79),
('Gambia', 1, 368, 81, 80),
('Georgia', 1, 369, 82, 81),
('Germany', 1, 370, 83, 82),
('Ghana', 1, 371, 84, 83),
('Gibraltar', 1, 372, 85, 84),
('Greece', 1, 373, 86, 85),
('Greenland', 1, 374, 87, 86),
('Grenada', 1, 375, 88, 87),
('Guadeloupe', 1, 376, 89, 88),
('Guam', 1, 377, 90, 89),
('Guatemala', 1, 378, 91, 90),
('Guinea', 1, 379, 92, 91),
('Guinea-Bissau', 1, 380, 93, 92),
('Guyana', 1, 381, 94, 93),
('Haiti', 1, 382, 95, 94),
('Heard Island and McDonald Islands', 1, 383, 96, 95),
('Honduras', 1, 384, 97, 96),
('Hong Kong', 1, 385, 98, 97),
('Hungary', 1, 386, 99, 98),
('Iceland', 1, 387, 100, 99),
('India', 1, 388, 101, 100),
('Indonesia', 1, 389, 102, 101),
('Iraq', 1, 390, 103, 102),
('Ireland', 1, 391, 104, 103),
('Islamic Republic of Iran', 1, 392, 105, 104),
('Isle of Man', 1, 393, 106, 105),
('Israel', 1, 394, 107, 106),
('Italy', 1, 395, 108, 107),
('Jamaica', 1, 396, 109, 108),
('Japan', 1, 397, 110, 109),
('Jordan', 1, 398, 111, 110),
('Kazakhstan', 1, 399, 112, 111),
('Kenya', 1, 400, 113, 112),
('Kiribati', 1, 401, 114, 113),
('Kuwait', 1, 402, 115, 114),
('Kyrgyzstan', 1, 403, 116, 115),
('Lao People''s Democratic Republic', 1, 404, 117, 116),
('Latvia', 1, 405, 118, 117),
('Lebanon', 1, 406, 119, 118),
('Lesotho', 1, 407, 120, 119),
('Liberia', 1, 408, 121, 120),
('Libyan Arab Jamahiriya', 1, 409, 122, 121),
('Liechtenstein', 1, 410, 123, 122),
('Lithuania', 1, 411, 124, 123),
('Luxembourg', 1, 412, 125, 124),
('Macao', 1, 413, 126, 125),
('Madagascar', 1, 414, 127, 126),
('Malawi', 1, 415, 128, 127),
('Malaysia', 1, 416, 129, 128),
('Maldives', 1, 417, 130, 129),
('Mali', 1, 418, 131, 130),
('Malta', 1, 419, 132, 131),
('Marshall Islands', 1, 420, 133, 132),
('Martinique', 1, 421, 134, 133),
('Mauritania', 1, 422, 135, 134),
('Mauritius', 1, 423, 136, 135),
('Mayotte', 1, 424, 137, 136),
('Mexico', 1, 425, 138, 137),
('Monaco', 1, 426, 139, 138),
('Mongolia', 1, 427, 140, 139),
('Montserrat', 1, 428, 141, 140),
('Morocco', 1, 429, 142, 141),
('Mozambique', 1, 430, 143, 142),
('Myanmar', 1, 431, 144, 143),
('Namibia', 1, 432, 145, 144),
('Nauru', 1, 433, 146, 145),
('Nepal', 1, 434, 147, 146),
('Netherlands', 1, 435, 148, 147),
('Netherlands Antilles', 1, 436, 149, 148),
('New Caledonia', 1, 437, 150, 149),
('New Zealand', 1, 438, 151, 150),
('Nicaragua', 1, 439, 152, 151),
('Niger', 1, 440, 153, 152),
('Nigeria', 1, 441, 154, 153),
('Niue', 1, 442, 155, 154),
('Norfolk Island', 1, 443, 156, 155),
('Northern Mariana Islands', 1, 444, 157, 156),
('Norway', 1, 445, 158, 157),
('Occupied Palestinian Territory', 1, 446, 159, 158),
('Oman', 1, 447, 160, 159),
('Pakistan', 1, 448, 161, 160),
('Palau', 1, 449, 162, 161),
('Panama', 1, 450, 163, 162),
('Papua New Guinea', 1, 451, 164, 163),
('Paraguay', 1, 452, 165, 164),
('Peru', 1, 453, 166, 165),
('Philippines', 1, 454, 167, 166),
('Pitcairn', 1, 455, 168, 167),
('Poland', 1, 456, 169, 168),
('Portugal', 1, 457, 170, 169),
('Puerto Rico', 1, 458, 171, 170),
('Qatar', 1, 459, 172, 171),
('Republic of Korea', 1, 460, 173, 172),
('Republic of Moldova', 1, 461, 174, 173),
('Republic of the Congo', 1, 462, 175, 174),
('Reunion', 1, 463, 176, 175),
('Romania', 1, 464, 177, 176),
('Russian Federation', 1, 465, 178, 177),
('Rwanda', 1, 466, 179, 178),
('Saint Helena', 1, 467, 180, 179),
('Saint Kitts and Nevis', 1, 468, 181, 180),
('Saint Lucia', 1, 469, 182, 181),
('Saint Vincent and the Grenadines', 1, 470, 183, 182),
('Saint-Pierre and Miquelon', 1, 471, 184, 183),
('Samoa', 1, 472, 185, 184),
('San Marino', 1, 473, 186, 185),
('Sao Tome and Principe', 1, 474, 187, 186),
('Saudi Arabia', 1, 475, 188, 187),
('Senegal', 1, 476, 189, 188),
('Serbia and Montenegro', 1, 477, 190, 189),
('Seychelles', 1, 478, 191, 190),
('Sierra Leone', 1, 479, 192, 191),
('Singapore', 1, 480, 193, 192),
('Slovakia', 1, 481, 194, 193),
('Slovenia', 1, 482, 195, 194),
('Solomon Islands', 1, 483, 196, 195),
('Somalia', 1, 484, 197, 196),
('South Africa', 1, 485, 198, 197),
('South Georgia and the South Sandwich Islands', 1, 486, 199, 198),
('Spain', 1, 487, 200, 199),
('Sri Lanka', 1, 488, 201, 200),
('Sudan', 1, 489, 202, 201),
('Suriname', 1, 490, 203, 202),
('Svalbard and Jan Mayen', 1, 491, 204, 203),
('Swaziland', 1, 492, 205, 204),
('Sweden', 1, 493, 206, 205),
('Switzerland', 1, 494, 207, 206),
('Syrian Arab Republic', 1, 495, 208, 207),
('Taiwan', 1, 496, 209, 208),
('Tajikistan', 1, 497, 210, 209),
('Thailand', 1, 498, 211, 210),
('The Democratic Republic Of The Congo', 1, 499, 212, 211),
('The Former Yugoslav Republic of Macedonia', 1, 500, 213, 212),
('Timor-Leste', 1, 501, 214, 213),
('Togo', 1, 502, 215, 214),
('Tokelau', 1, 503, 216, 215),
('Tonga', 1, 504, 217, 216),
('Trinidad and Tobago', 1, 505, 218, 217),
('Tunisia', 1, 506, 219, 218),
('Turkey', 1, 507, 220, 219),
('Turkmenistan', 1, 508, 221, 220),
('Turks and Caicos Islands', 1, 509, 222, 221),
('Tuvalu', 1, 510, 223, 222),
('U.S. Virgin Islands', 1, 511, 224, 223),
('Uganda', 1, 512, 225, 224),
('Ukraine', 1, 513, 226, 225),
('United Arab Emirates', 1, 514, 227, 226),
('United Kingdom', 1, 515, 228, 227),
('United Republic Of Tanzania', 1, 516, 229, 228),
('United States', 1, 517, 230, 229),
('United States Minor Outlying Islands', 1, 518, 231, 230),
('Uruguay', 1, 519, 232, 231),
('Uzbekistan', 1, 520, 233, 232),
('Vanuatu', 1, 521, 234, 233),
('Vatican City State', 1, 522, 235, 234),
('Venezuela', 1, 523, 236, 235),
('Vietnam', 1, 524, 237, 236),
('Wallis and Futuna', 1, 525, 238, 237),
('Western Sahara', 1, 526, 239, 238),
('Yemen', 1, 527, 240, 239),
('Zambia', 1, 528, 241, 240),
('Zimbabwe', 1, 529, 242, 241);

UPDATE `vtiger_mailingcountry` SET `picklist_valueid`=`picklist_valueid`-287+(SELECT id
    FROM vtiger_picklistvalues_seq);

UPDATE `vtiger_picklistvalues_seq` SET `id`=`id`+242;

INSERT INTO `vtiger_role2picklist`(`roleid`, `picklistvalueid`, `picklistid`, `sortid`)
SELECT vr.roleid, vbc.picklist_valueid, picklist_seq.id AS picklistid, vbc.sortorderid
FROM vtiger_role vr, vtiger_mailingcountry vbc, (
    SELECT id
    FROM vtiger_picklist_seq
    ) AS picklist_seq;

/* PERSON OTHER COUNTRY */

UPDATE  `vtigercrm540`.`vtiger_field` SET  `uitype` =  '15' WHERE  `vtiger_field`.`fieldid` =105;
UPDATE  `vtigercrm540`.`vtiger_picklist_seq` SET  `id` =  `id` + 1;

INSERT INTO  `vtigercrm540`.`vtiger_picklist` (`picklistid` , `name`)
SELECT id,  "othercountry" AS name
FROM `vtiger_picklist_seq`;

CREATE TABLE IF NOT EXISTS `vtiger_othercountry` (
  `othercountry` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL,
  `othercountryid` int(11) NOT NULL,
  `sortorderid` int(10) DEFAULT NULL,
  PRIMARY KEY (`othercountryid`),
  UNIQUE KEY `othercountry_othercountry_idx` (`othercountry`)
);

CREATE TABLE IF NOT EXISTS `vtiger_othercountry_seq` (
  `id` int(11) NOT NULL
);

INSERT INTO  `vtigercrm540`.`vtiger_othercountry_seq` (`id`) VALUES ('242');

INSERT INTO `vtiger_othercountry` (`othercountry`, `presence`, `picklist_valueid`, `othercountryid`, `sortorderid`) VALUES
('--None--', 1, 288, 1, 0),
('Afghanistan', 1, 289, 2, 1),
('Aland Islands', 1, 290, 3, 2),
('Albania', 1, 291, 4, 3),
('Algeria', 1, 292, 5, 4),
('American Samoa', 1, 293, 6, 5),
('Andorra', 1, 294, 7, 6),
('Angola', 1, 295, 8, 7),
('Anguilla', 1, 296, 9, 8),
('Antarctica', 1, 297, 10, 9),
('Antigua and Barbuda', 1, 298, 11, 10),
('Argentina', 1, 299, 12, 11),
('Armenia', 1, 300, 13, 12),
('Aruba', 1, 301, 14, 13),
('Australia', 1, 302, 15, 14),
('Austria', 1, 303, 16, 15),
('Azerbaijan', 1, 304, 17, 16),
('Bahamas', 1, 305, 18, 17),
('Bahrain', 1, 306, 19, 18),
('Bangladesh', 1, 307, 20, 19),
('Barbados', 1, 308, 21, 20),
('Belarus', 1, 309, 22, 21),
('Belgium', 1, 310, 23, 22),
('Belize', 1, 311, 24, 23),
('Benin', 1, 312, 25, 24),
('Bermuda', 1, 313, 26, 25),
('Bhutan', 1, 314, 27, 26),
('Bolivia', 1, 315, 28, 27),
('Bosnia and Herzegovina', 1, 316, 29, 28),
('Botswana', 1, 317, 30, 29),
('Bouvet Island', 1, 318, 31, 30),
('Brazil', 1, 319, 32, 31),
('British Indian Ocean Territory', 1, 320, 33, 32),
('British Virgin Islands', 1, 321, 34, 33),
('Brunei Darussalam', 1, 322, 35, 34),
('Bulgaria', 1, 323, 36, 35),
('Burkina Faso', 1, 324, 37, 36),
('Burundi', 1, 325, 38, 37),
('Cambodia', 1, 326, 39, 38),
('Cameroon', 1, 327, 40, 39),
('Canada', 1, 328, 41, 40),
('Cape Verde', 1, 329, 42, 41),
('Cayman Islands', 1, 330, 43, 42),
('Central African', 1, 331, 44, 43),
('Chad', 1, 332, 45, 44),
('Chile', 1, 333, 46, 45),
('China', 1, 334, 47, 46),
('Christmas Island', 1, 335, 48, 47),
('Cocos (Keeling) Islands', 1, 336, 49, 48),
('Colombia', 1, 337, 50, 49),
('Comoros', 1, 338, 51, 50),
('Cook Islands', 1, 339, 52, 51),
('Costa Rica', 1, 340, 53, 52),
('Cote d''Ivoire', 1, 341, 54, 53),
('Croatia', 1, 342, 55, 54),
('Cuba', 1, 343, 56, 55),
('Cyprus', 1, 344, 57, 56),
('Czech Republic', 1, 345, 58, 57),
('Democratic People''s Republic of Korea', 1, 346, 59, 58),
('Denmark', 1, 347, 60, 59),
('Djibouti', 1, 348, 61, 60),
('Dominica', 1, 349, 62, 61),
('Dominican Republic', 1, 350, 63, 62),
('Ecuador', 1, 351, 64, 63),
('Egypt', 1, 352, 65, 64),
('El Salvador', 1, 353, 66, 65),
('Equatorial Guinea', 1, 354, 67, 66),
('Eritrea', 1, 355, 68, 67),
('Estonia', 1, 356, 69, 68),
('Ethiopia', 1, 357, 70, 69),
('Falkland Islands', 1, 358, 71, 70),
('Faroe Islands', 1, 359, 72, 71),
('Federated States of Micronesia', 1, 360, 73, 72),
('Fiji', 1, 361, 74, 73),
('Finland', 1, 362, 75, 74),
('France', 1, 363, 76, 75),
('French Guiana', 1, 364, 77, 76),
('French Polynesia', 1, 365, 78, 77),
('French Southern Territories', 1, 366, 79, 78),
('Gabon', 1, 367, 80, 79),
('Gambia', 1, 368, 81, 80),
('Georgia', 1, 369, 82, 81),
('Germany', 1, 370, 83, 82),
('Ghana', 1, 371, 84, 83),
('Gibraltar', 1, 372, 85, 84),
('Greece', 1, 373, 86, 85),
('Greenland', 1, 374, 87, 86),
('Grenada', 1, 375, 88, 87),
('Guadeloupe', 1, 376, 89, 88),
('Guam', 1, 377, 90, 89),
('Guatemala', 1, 378, 91, 90),
('Guinea', 1, 379, 92, 91),
('Guinea-Bissau', 1, 380, 93, 92),
('Guyana', 1, 381, 94, 93),
('Haiti', 1, 382, 95, 94),
('Heard Island and McDonald Islands', 1, 383, 96, 95),
('Honduras', 1, 384, 97, 96),
('Hong Kong', 1, 385, 98, 97),
('Hungary', 1, 386, 99, 98),
('Iceland', 1, 387, 100, 99),
('India', 1, 388, 101, 100),
('Indonesia', 1, 389, 102, 101),
('Iraq', 1, 390, 103, 102),
('Ireland', 1, 391, 104, 103),
('Islamic Republic of Iran', 1, 392, 105, 104),
('Isle of Man', 1, 393, 106, 105),
('Israel', 1, 394, 107, 106),
('Italy', 1, 395, 108, 107),
('Jamaica', 1, 396, 109, 108),
('Japan', 1, 397, 110, 109),
('Jordan', 1, 398, 111, 110),
('Kazakhstan', 1, 399, 112, 111),
('Kenya', 1, 400, 113, 112),
('Kiribati', 1, 401, 114, 113),
('Kuwait', 1, 402, 115, 114),
('Kyrgyzstan', 1, 403, 116, 115),
('Lao People''s Democratic Republic', 1, 404, 117, 116),
('Latvia', 1, 405, 118, 117),
('Lebanon', 1, 406, 119, 118),
('Lesotho', 1, 407, 120, 119),
('Liberia', 1, 408, 121, 120),
('Libyan Arab Jamahiriya', 1, 409, 122, 121),
('Liechtenstein', 1, 410, 123, 122),
('Lithuania', 1, 411, 124, 123),
('Luxembourg', 1, 412, 125, 124),
('Macao', 1, 413, 126, 125),
('Madagascar', 1, 414, 127, 126),
('Malawi', 1, 415, 128, 127),
('Malaysia', 1, 416, 129, 128),
('Maldives', 1, 417, 130, 129),
('Mali', 1, 418, 131, 130),
('Malta', 1, 419, 132, 131),
('Marshall Islands', 1, 420, 133, 132),
('Martinique', 1, 421, 134, 133),
('Mauritania', 1, 422, 135, 134),
('Mauritius', 1, 423, 136, 135),
('Mayotte', 1, 424, 137, 136),
('Mexico', 1, 425, 138, 137),
('Monaco', 1, 426, 139, 138),
('Mongolia', 1, 427, 140, 139),
('Montserrat', 1, 428, 141, 140),
('Morocco', 1, 429, 142, 141),
('Mozambique', 1, 430, 143, 142),
('Myanmar', 1, 431, 144, 143),
('Namibia', 1, 432, 145, 144),
('Nauru', 1, 433, 146, 145),
('Nepal', 1, 434, 147, 146),
('Netherlands', 1, 435, 148, 147),
('Netherlands Antilles', 1, 436, 149, 148),
('New Caledonia', 1, 437, 150, 149),
('New Zealand', 1, 438, 151, 150),
('Nicaragua', 1, 439, 152, 151),
('Niger', 1, 440, 153, 152),
('Nigeria', 1, 441, 154, 153),
('Niue', 1, 442, 155, 154),
('Norfolk Island', 1, 443, 156, 155),
('Northern Mariana Islands', 1, 444, 157, 156),
('Norway', 1, 445, 158, 157),
('Occupied Palestinian Territory', 1, 446, 159, 158),
('Oman', 1, 447, 160, 159),
('Pakistan', 1, 448, 161, 160),
('Palau', 1, 449, 162, 161),
('Panama', 1, 450, 163, 162),
('Papua New Guinea', 1, 451, 164, 163),
('Paraguay', 1, 452, 165, 164),
('Peru', 1, 453, 166, 165),
('Philippines', 1, 454, 167, 166),
('Pitcairn', 1, 455, 168, 167),
('Poland', 1, 456, 169, 168),
('Portugal', 1, 457, 170, 169),
('Puerto Rico', 1, 458, 171, 170),
('Qatar', 1, 459, 172, 171),
('Republic of Korea', 1, 460, 173, 172),
('Republic of Moldova', 1, 461, 174, 173),
('Republic of the Congo', 1, 462, 175, 174),
('Reunion', 1, 463, 176, 175),
('Romania', 1, 464, 177, 176),
('Russian Federation', 1, 465, 178, 177),
('Rwanda', 1, 466, 179, 178),
('Saint Helena', 1, 467, 180, 179),
('Saint Kitts and Nevis', 1, 468, 181, 180),
('Saint Lucia', 1, 469, 182, 181),
('Saint Vincent and the Grenadines', 1, 470, 183, 182),
('Saint-Pierre and Miquelon', 1, 471, 184, 183),
('Samoa', 1, 472, 185, 184),
('San Marino', 1, 473, 186, 185),
('Sao Tome and Principe', 1, 474, 187, 186),
('Saudi Arabia', 1, 475, 188, 187),
('Senegal', 1, 476, 189, 188),
('Serbia and Montenegro', 1, 477, 190, 189),
('Seychelles', 1, 478, 191, 190),
('Sierra Leone', 1, 479, 192, 191),
('Singapore', 1, 480, 193, 192),
('Slovakia', 1, 481, 194, 193),
('Slovenia', 1, 482, 195, 194),
('Solomon Islands', 1, 483, 196, 195),
('Somalia', 1, 484, 197, 196),
('South Africa', 1, 485, 198, 197),
('South Georgia and the South Sandwich Islands', 1, 486, 199, 198),
('Spain', 1, 487, 200, 199),
('Sri Lanka', 1, 488, 201, 200),
('Sudan', 1, 489, 202, 201),
('Suriname', 1, 490, 203, 202),
('Svalbard and Jan Mayen', 1, 491, 204, 203),
('Swaziland', 1, 492, 205, 204),
('Sweden', 1, 493, 206, 205),
('Switzerland', 1, 494, 207, 206),
('Syrian Arab Republic', 1, 495, 208, 207),
('Taiwan', 1, 496, 209, 208),
('Tajikistan', 1, 497, 210, 209),
('Thailand', 1, 498, 211, 210),
('The Democratic Republic Of The Congo', 1, 499, 212, 211),
('The Former Yugoslav Republic of Macedonia', 1, 500, 213, 212),
('Timor-Leste', 1, 501, 214, 213),
('Togo', 1, 502, 215, 214),
('Tokelau', 1, 503, 216, 215),
('Tonga', 1, 504, 217, 216),
('Trinidad and Tobago', 1, 505, 218, 217),
('Tunisia', 1, 506, 219, 218),
('Turkey', 1, 507, 220, 219),
('Turkmenistan', 1, 508, 221, 220),
('Turks and Caicos Islands', 1, 509, 222, 221),
('Tuvalu', 1, 510, 223, 222),
('U.S. Virgin Islands', 1, 511, 224, 223),
('Uganda', 1, 512, 225, 224),
('Ukraine', 1, 513, 226, 225),
('United Arab Emirates', 1, 514, 227, 226),
('United Kingdom', 1, 515, 228, 227),
('United Republic Of Tanzania', 1, 516, 229, 228),
('United States', 1, 517, 230, 229),
('United States Minor Outlying Islands', 1, 518, 231, 230),
('Uruguay', 1, 519, 232, 231),
('Uzbekistan', 1, 520, 233, 232),
('Vanuatu', 1, 521, 234, 233),
('Vatican City State', 1, 522, 235, 234),
('Venezuela', 1, 523, 236, 235),
('Vietnam', 1, 524, 237, 236),
('Wallis and Futuna', 1, 525, 238, 237),
('Western Sahara', 1, 526, 239, 238),
('Yemen', 1, 527, 240, 239),
('Zambia', 1, 528, 241, 240),
('Zimbabwe', 1, 529, 242, 241);

UPDATE `vtiger_othercountry` SET `picklist_valueid`=`picklist_valueid`-287+(SELECT id
    FROM vtiger_picklistvalues_seq);

UPDATE `vtiger_picklistvalues_seq` SET `id`=`id`+242;

INSERT INTO `vtiger_role2picklist`(`roleid`, `picklistvalueid`, `picklistid`, `sortid`)
SELECT vr.roleid, vbc.picklist_valueid, picklist_seq.id AS picklistid, vbc.sortorderid
FROM vtiger_role vr, vtiger_othercountry vbc, (
    SELECT id
    FROM vtiger_picklist_seq
    ) AS picklist_seq;