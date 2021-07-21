INSERT INTO public.human_types(name, description, created_at, updated_at) 
	VALUES ('R', 'Rider', '2021-07-17 00:00:00', '2021-07-17 00:00:00'), ('D', 'Driver', '2021-07-17 00:00:00', '2021-07-17 00:00:00');

INSERT INTO public.identification_types(name, description, created_at, updated_at)
	VALUES ('CC', 'Citizenship Card', '2021-07-17 00:00:00', '2021-07-17 00:00:00'), ('PP', 'Passport', '2021-07-17 00:00:00', '2021-07-17 00:00:00');

INSERT INTO public.payment_method_types(name, description, created_at, updated_at)
	VALUES ('Card', 'Credit Card o Debit Card', '2021-07-17 00:00:00', '2021-07-17 00:00:00'), ('Account', 'Bank Account', '2021-07-17 00:00:00', '2021-07-17 00:00:00');

INSERT INTO public.humans(human_type_id, identification_type_id, identification_number, first_name, others_names, first_lastname, other_lastname, age, birth_date, phone, adress, e_mail, created_at, updated_at)
	VALUES (2, 2, 9743307, 'Hedi', 'Maï', 'Dillistone', 'Waddy', 39, '2000-02-01 05:17:38', 5343520, '352 Alpine Court', 'hwaddy0@zdnet.com', '2020-11-17 08:08:03', '2020-06-23 10:54:42'), (1, 2, 6638667, 'Yevette', 'Loïc', 'Adamczyk', 'Canto', 46, '2006-03-21 00:30:43', 4914135, '02 Truax Lane', 'ycanto1@webs.com', '2021-04-23 20:21:46', '2020-10-23 09:36:59'), (1, 1, 4393179, 'Brooks', 'Andrée', 'Phetteplace', 'Frudd', 31, '2006-12-14 16:10:17', 1181761, '25 Green Place', 'bfrudd2@dmoz.org', '2021-04-19 10:27:51', '2020-09-07 21:09:12'), (1, 2, 944584, 'Rosalind', 'Anaïs', 'Dillingston', 'Yter', 16, '2001-06-09 07:52:29', 9524725, '1 Sachs Circle', 'ryter3@oaic.gov.au', '2020-11-26 14:19:38', '2020-04-23 11:42:23'), (2, 1, 7781270, 'Kirsteni', 'Zhì', 'Mearns', 'Mendoza', 54, '2010-03-15 05:56:57', 5495237, '63017 Rieder Street', 'kmendoza4@cpanel.net', '2020-04-11 20:17:41', '2021-07-30 10:26:40'), (2, 1, 6531324, 'Serene', 'Josée', 'Eveleigh', 'Meynell', 22, '1993-12-03 05:04:16', 1504799, '35875 Heath Road', 'smeynell5@friendfeed.com', '2021-03-28 09:21:06', '2021-07-04 06:05:57'), (1, 2, 2627733, 'Hazel', 'Judicaël', 'Organ', 'Wenger', 70, '2009-07-06 09:20:22', 9639423, '6 Paget Parkway', 'hwenger6@homestead.com', '2020-03-19 17:48:48', '2021-12-25 10:15:49'), (2, 1, 2814899, 'Nerti', 'Lóng', 'Spadollini', 'Van der Son', 62, '2015-07-03 00:02:28', 6990135, '09 Haas Street', 'nvanderson7@technorati.com', '2021-10-23 22:42:07', '2021-09-30, 02:02:41'), (2, 2, 1093026, 'Darill', 'Märta', 'Beine', 'Piercy', 77, '2013-04-09 23:01:47', 2082275, '5 Monument Circle', 'dpiercy8@google.fr', '2020-04-27 19:19:00', '2020-12-11 20:04:22'), (2, 1, 114125, 'Sid', 'Faîtes', 'Spinney', 'Quarton', 37, '2013-01-07 00:48:19', 4140778, '702 Ramsey Plaza', 'squarton9@chron.com', '2021-10-31 00:00:34', '2021-02-16 20:30:04'), (2, 2, 6075292, 'Reeta', 'Desirée', 'Ledwidge', 'Moughtin', 66, '1995-04-18 15:51:38', 4788177, '73109 Jana Plaza', 'rmoughtina@webs.com', '2021-08-22 16:36:45', '2021-11-13 17:31:37'), (1, 1, 9758509, 'Audra', 'Vénus', 'Sottell', 'Windybank', 27, '2005-05-25 00:25:06', 6620558, '54305 Lyons Point', 'awindybankb@gravatar.com', '2021-04-10, 00:18:15', '2021-12-13 14:44:08'), (2, 1, 8296735, 'Pennie', 'Yú', 'Kyrkeman', 'Dougary', 67, '1994-05-15 12:34:09', 7116996, '02303 Harbort Drive', 'pdougaryc@cdc.gov', '2021-03-18 13:46:36', '2020-01-23 05:36:05'), (2, 1, 5243679, 'Giraud', 'Tán', 'Terrans', 'Mazin', 60, '2007-08-01 01:20:28', 6352113, '0 Rockefeller Alley', 'gmazind@gizmodo.com', '2020-12-09 19:32:14', '2021-07-15 10:36:51'), (2, 1, 3254580, 'Maurits', 'Tú', 'Cathery', 'Belchamp', 60, '1994-11-24 15:57:53', 3441544, '013 Swallow Way', 'mbelchampe@multiply.com', '2020-12-21 02:23:38', '2021-03-18 06:42:02'), (2, 1, 8229724, 'Shanan', 'Marie-josée', 'Rollason', 'Vanyutin', 75, '1994-09-11 07:03:09', 5917753, '2 Harper Circle', 'svanyutinf@sciencedirect.com', '2021-11-08 09:45:32', '2020-04-10, 02:21:34'), (1, 2, 3115026, 'Diann', 'Adélie', 'Argyle', 'Waistall', 77, '1995-02-10 19:31:06', 4221263, '3 Kenwood Court', 'dwaistallg@instagram.com', '2021-09-12 14:23:40', '2021-11-15 20:32:48'), (1, 2, 1384609, 'Sam', 'Bérangère', 'Klimontovich', 'Minto', 44, '2002-01-08 14:00:40', 6918348, '99 Melrose Crossing', 'smintoh@sun.com', '2021-08-10 22:43:20', '2021-05-27 21:24:35'), (1, 2, 5493859, 'Dwayne', 'Laurène', 'Keech', 'Blatherwick', 18, '1996-04-01 20:29:34', 1327185, '7075 Marcy Hill', 'dblatherwicki@spotify.com', '2021-10-03 11:41:11', '2020-05-20 16:53:34'), (1, 2, 760732, 'Roby', 'Adèle', 'Shoveller', 'Shurmore', 18, '2003-08-14 06:02:35', 6831631, '4516 Farmco Park', 'rshurmorej@blogtalkradio.com', '2021-07-29 21:54:04', '2021-11-06 12:13:55');

INSERT INTO public.riders(human_id, rating, created_at, updated_at)
	VALUES (2 , 4.2, '2021-07-17 00:00:00', '2021-07-17 00:00:00'),	(3 , 4.2, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (4 , 4.2, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (7 , 4.2, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (12 , 4.2, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (17 , 4.2, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (18 , 4.2, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (19 , 4.2, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (20 , 4.2, '2021-07-17 00:00:00', '2021-07-17 00:00:00');

INSERT INTO public.drivers(human_id, license, rating, state, created_at, updated_at)
	VALUES (1 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (5 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (6 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (8 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (9 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (10 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (11 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (13 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (14 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (15 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00'), (16 , '606-10-5686', 4.0, 0, '2021-07-17 00:00:00', '2021-07-17 00:00:00');
