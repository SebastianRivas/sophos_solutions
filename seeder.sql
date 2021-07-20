INSERT INTO public.identification_types(type_name, type_description, created_at, updated_at) 
VALUES ('CC', 'Citizenship Card', '2020-12-07 00:00:00', '2020-12-07 00:00:00'), ('CE', 'Alien Registration Card', '2020-12-07 00:00:00', '2020-12-07 00:00:00');

INSERT INTO public.pay_method_types(type_name, type_description, created_at, updated_at)
VALUES ('CC', 'Credit Card', '2020-12-07 00:00:00', '2020-12-07 00:00:00'), ('DC', 'Debit Card', '2020-12-07 00:00:00', '2020-12-07 00:00:00');

INSERT INTO public.person_types(type_name, type_description, created_at, updated_at)
VALUES ('R', 'Rider', '2020-12-07 00:00:00', '2020-12-07 00:00:00'), ('D', 'Driver', '2020-12-07 00:00:00', '2020-12-07 00:00:00');

INSERT INTO public.people(identification_type, person_type, identification_number, first_name, others_names, first_lastname, other_lastname, phone, birth_date, age, rating, state, created_at, updated_at)
VALUES (1, 1, 8086606, 'Andréa', 'Ginger', 'Beamand', 'Brinicombe', 51232115, '2020-02-13 16:43:54', 45, 2.48, 1, '2020-11-14 15:51:37', '2021-04-26 05:27:48'),
(1, 1, 8583766, 'Adélaïde', 'Devy', 'Gilford', 'Alti', 85761131, '2018-05-08 20:40:58', 39, 2.48, 1, '2020-11-29 23:34:48', '2020-09-15 06:14:39'),
(1, 1, 5532088, 'Séréna', 'Alyosha', 'Tembridge', 'McGillivrie', 33998999, '2019-11-01 10:11:24', 73, 3.92, 1, '2021-03-07 08:55:08', '2021-02-12 18:24:47'),
(1, 1, 7221680, 'Magdalène', 'Fraze', 'Stocken', 'Hearty', 80599696, '2001-10-10 22:56:19', 58, 2.93, 1, '2021-01-23 04:04:40', '2021-05-26 21:18:38'),
(2, 1, 6457727, 'Régine', 'Morey', 'Pickrill', 'McGavigan', 91254872, '2014-10-25 09:42:34', 47, 3.4, 1, '2020-08-01 05:29:33', '2021-04-30 08:53:44'),
(1, 1, 4665142, 'Léonie', 'Gerhardt', 'Peniman', 'Leathlay', 83259676, '2009-04-06 21:05:01', 70, 4.01, 1, '2020-12-14 04:45:18', '2020-12-20 06:12:22'),
(2, 1, 1767563, 'Esbjörn', 'Tris', 'Frudd', 'Bavin', 56950575, '2021-01-09 00:54:12', 57, 1.56, 1, '2021-05-03 03:50:07', '2021-07-01 15:36:35'),
(1, 2, 7271015, 'Faîtes', 'Wilden', 'Vasiliu', 'Raoul', 21910267, '2004-03-17 23:48:29', 19, 4.34, 1, '2021-01-19 15:49:40', '2020-10-07 22:47:12'),
(1, 2, 1092071, 'Irène', 'Ulrich', 'Manders', 'Gonnet', 28627552, '2014-11-04 05:56:27', 64, 4.94, 1, '2020-12-10 00:51:35', '2021-04-06 19:04:29'),
(2, 2, 7305587, 'Styrbjörn', 'Ara', 'Devorill', 'Botcherby', 3679962, '2014-07-02 02:40:13', 56, 2.16, 1, '2021-06-10 11:31:30', '2020-07-30 11:19:16'),
(1, 2, 1133124, 'Simplifiés', 'Laurence', 'Bartelot', 'Benmore', 43835317, '1993-08-04 19:58:43', 35, 1.74, 1, '2021-05-24 16:09:46', '2021-05-24 14:50:37'),
(2, 2, 8745421, 'Gaïa', 'Wat', 'Rookesby', 'Edgars', 41009222, '2005-07-21 13:22:03', 26, 3.57, 1, '2020-11-12 09:32:10', '2020-08-03 11:30:47'),
(1, 2, 6294258, 'Kévina', 'Zechariah', 'Dunlea', 'Ianelli', 17615355, '2010-07-14 18:29:01', 27, 3.88, 1, '2021-01-14 14:21:34', '2020-09-24 18:44:06'),
(2, 2, 2794117, 'Andréanne', 'David', 'Leavold', 'Adger', 62237744, '2013-02-24 04:52:25', 24, 1.71, 1, '2020-08-02 16:14:05', '2020-09-30 07:54:23');